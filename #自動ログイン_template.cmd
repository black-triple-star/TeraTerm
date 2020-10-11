rem #####################################
rem 改行コードがCR+LFでないと動作しません
rem #####################################
chcp 65001
chcp 932



set SERVER=192.168.0.10
set KEY_PATH=id_rsa_forEC2


rem #############################################################################################################

rem パスワード認証（キーファイルなし）
rem echo connect '%SERVER% /ssh2 /auth=password /user=ユーザー名 /passwd=パスワード'>%temp%\temp.ttl

rem キーファイルで認証
echo connect '%SERVER% /ssh2 /auth=publickey  /user=root /passwd="" /keyfile="%KEY_PATH%"'>%temp%\temp.ttl

start /b C:\bin\teraterm\ttermpro.exe /M=%temp%\temp.ttl
