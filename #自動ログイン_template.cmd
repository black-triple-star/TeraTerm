rem #####################################
rem ���s�R�[�h��CR+LF�łȂ��Ɠ��삵�܂���
rem #####################################
chcp 65001
chcp 932



set SERVER=192.168.0.10
set KEY_PATH=id_rsa_forEC2


rem #############################################################################################################

rem �p�X���[�h�F�؁i�L�[�t�@�C���Ȃ��j
rem echo connect '%SERVER% /ssh2 /auth=password /user=���[�U�[�� /passwd=�p�X���[�h'>%temp%\temp.ttl

rem �L�[�t�@�C���ŔF��
echo connect '%SERVER% /ssh2 /auth=publickey  /user=root /passwd="" /keyfile="%KEY_PATH%"'>%temp%\temp.ttl

start /b C:\bin\teraterm\ttermpro.exe /M=%temp%\temp.ttl
