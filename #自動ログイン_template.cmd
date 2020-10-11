rem #####################################
rem 改行コードがCR+LFでないと動作しません
rem #####################################
chcp 65001
chcp 932


rem AWS接続
rem 評価環境(evaluation)1 
rem ec2-50-17-231-192.compute-1.amazonaws.com
rem 
rem 評価環境(evaluation)8 
rem ec2-184-73-182-41.compute-1.amazonaws.com
rem 
rem 評価環境(evaluation)9 
rem ec2-107-20-199-63.compute-1.amazonaws.com
rem 
rem 評価環境(evaluation)12 
rem ec2-50-17-221-160.compute-1.amazonaws.com

set SERVER=ec2-50-17-231-192.compute-1.amazonaws.com

set KEY_PATH=L:\NTT docomo リコメンド\鍵\id_rsa_forEC2


rem #############################################################################################################

rem パスワード認証（キーファイルなし）版
rem echo connect '%SERVER% /ssh2 /auth=password /user=takashi.nakamura /passwd=4kTyrwKs'>%temp%\temp.ttl

rem キーファイルで認証版
echo connect '%SERVER% /ssh2 /auth=publickey  /user=root /passwd="" /keyfile="%KEY_PATH%"'>%temp%\temp.ttl

start /b C:\bin\teraterm\ttermpro.exe /M=%temp%\temp.ttl
