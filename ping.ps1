# Keep pinging a remote IP and sound an alert when it replies.

$i = 1
while($true) {
    if((Test-NetConnection DESKTOP-COMPUTER -CommonTCPPort SMB -InformationLevel Quiet) -eq $true) {
        Write-Host "CONNECTED"
        [console]::beep(999,999)
        Start-Sleep -Milliseconds 999
        } else {
        Write-Host "Failed connect #"($i++)
    }
}