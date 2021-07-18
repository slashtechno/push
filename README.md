# push
Push a website or code to a remote server or Github

## Windows (Beta)

### To install

Press WINDOWS + R (or just open the run dialogue,) and run the following command:
`powershell -noprofile -command "cd ~\Documents;wget -O installwin.ps1 https://raw.githubusercontent.com/slashtechno/push/windowssupport/installwin.ps1;Start-process powershell -ArgumentList '-noprofile -file installwin.ps1' -verb RunAs"`

Currently, please do not run the installer twice! It does not check if there is already a PATH variable for the program set, and will add one every time you run the program!

The installer only requires Administrator access in order to add a PATH variable so you can run "push" anywhere. If you want to change the command PUSH uses, navigate to `BOOTDRIVE:\ProgramData\push` and simply rename push.bat. There will soon be a way to change the name in the program.

### To run
`push`

## Linux

### To install
`wget -qO- https://raw.githubusercontent.com/slashtechno/push/main/install | bash`

### To run
`push`

### To uninstall
`wget -qO- https://raw.githubusercontent.com/slashtechno/push/main/uninstall | bash`


### To update
`wget -qO- https://raw.githubusercontent.com/slashtechno/push/main/update | bash`

## Credits
* [@Glitch752](https://github.com/glitch752) for Windows support
