# This adds the enviornment variables so you can run "push" in the console
$old = (Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name path).path
$new  =  "$old;$Env:Programdata\push"
Set-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name path -Value $new

Write-Host "Set the enviornment varibles!"

# This makes the push directory in ProgramData and changes the directory to it.
cd $Env:Programdata
mkdir push
cd push

# This gets the files from GitHub required to use push.
wget -O push.exe https://raw.githubusercontent.com/slashtechno/push/windowssupport/push.exe
wget -O push.bat https://raw.githubusercontent.com/slashtechno/push/windowssupport/push.bat

# This makes all the configuration files used.
mkdir config
cd config
New-Item -Name site_directory.conf -ItemType File
New-Item -Name server_IP.conf -ItemType File
New-Item -Name git_repo.conf -ItemType File
New-Item -Name git_username.conf -ItemType File
