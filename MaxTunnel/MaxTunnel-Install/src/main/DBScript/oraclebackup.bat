@echo off

echo create new folder
md "D:\Oracle\Backup"

echo ɾ��30��ǰ�ı����ļ�����־

forfiles /p "D:\Oracle\Backup" /m *.dmp /d -30 /c "cmd /c del @path" 
forfiles /p "D:\Oracle\Backup" /m *.log /d -30 /c "cmd /c del @path"

echo ���ڱ��� Oracle ���ݿ⣬���Եȡ��� 
exp bandweaver/123456@MAXTUNNELDB file=D:\Oracle\Backup\%date:~0,4%%date:~5,2%%date:~8,2%.dmp owner(bandweaver) log=D:\Oracle\Backup\%date:~0,4%%date:~5,2%%date:~8,2%.log
echo �������!
:end

pause
