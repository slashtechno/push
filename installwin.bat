powershell -Command "cd $Env:Programdata;mkdir push;cd push;wget -O push.exe https://raw.githubusercontent.com/slashtechno/push/main/push.exe;mkdir config;cd config;cmd;echo.>site_directory.conf;echo.>server_IP.conf;echo.>git_repo.conf;echo.>git_username.conf"
pause
