rem #####################################
rem ���s�R�[�h��CR+LF�łȂ��Ɠ��삵�܂���
rem #####################################
chcp 65001
chcp 932


rem AWS�ڑ�
rem �]����(evaluation)1 
rem ec2-50-17-231-192.compute-1.amazonaws.com
rem 
rem �]����(evaluation)8 
rem ec2-184-73-182-41.compute-1.amazonaws.com
rem 
rem �]����(evaluation)9 
rem ec2-107-20-199-63.compute-1.amazonaws.com
rem 
rem �]����(evaluation)12 
rem ec2-50-17-221-160.compute-1.amazonaws.com

set SERVER=ec2-50-17-231-192.compute-1.amazonaws.com
set SERVER=192.168.0.127
set SERVER=192.168.0.7

set KEY_PATH=L:\NTT docomo ���R�����h\��\id_rsa_forEC2

rem #############################################################################################################

rem �p�X���[�h�F�؁i�L�[�t�@�C���Ȃ��j��
rem echo connect '%SERVER% /ssh2 /auth=password /user=takashi.nakamura /passwd=4kTyrwKs'>%temp%\temp.ttl
rem echo connect '%SERVER% /ssh2 /auth=password /user=root /passwd=qwerty1@'>%temp%\temp.ttl
echo connect '%SERVER% /ssh2 /auth=password /user=takashi /passwd=r5i8t6u7y'>%temp%\temp.ttl

rem �L�[�t�@�C���ŔF�ؔ�
rem echo connect '%SERVER% /ssh2 /auth=publickey  /user=root /passwd="" /keyfile="%KEY_PATH%"'>%temp%\temp.ttl

start /b C:\bin\teraterm\ttermpro.exe /M=%temp%\temp.ttl
