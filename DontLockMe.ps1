$WShell = New-Object -Com "Wscript.Shell"

Write-Output "________              /\ __    .____                  __                        ._._._."
Write-Output "\______ \   ____   ___)//  |_  |    |    ____   ____ |  | __   _____   ____     | | | |"
Write-Output " |    |  \ /  _ \ /    \   __\ |    |   /  _ \_/ ___\|  |/ /  /     \_/ __ \    | | | |"
Write-Output " |    `   (  <_> )   |  \  |   |    |__(  <_> )  \___|    <  |  Y Y  \  ___/     \|\|\|"
Write-Output "/_______  /\____/|___|  /__|   |_______ \____/ \___  >__|_ \ |__|_|  /\___  >    ______"
Write-Output "        \/            \/               \/          \/     \/       \/     \/     \/\/\/"
Write-Output "                                                                                       "
Write-Output "version 1.2                                                                            "
Write-Output "                                                                                       "

<#inputs#>
[int]$hours = Read-Host "How many hours do you want to run the script? (in hours)" 
[int]$lockScreenInterval = Read-Host "What is the lock screen interval? (in minutes)" 
<#/inputs#>

$sleepIntervalSec = ([int]$lockScreenInterval * 60) - 60 #refresh will be done 1 minute before the lock screen interval
$sleepIntervalMin = $sleepIntervalSec / 60
$numberOfIterations = ([Math]::Round(($hours*60*60)/$sleepInterval, 0))
$i = 1

Write-Output "                                                                                       "
Write-Output "Running $numberOfIterations iterations in $hours hour(s)...                            "
Write-Output "Log:                                                                                   "

while ($numberOfIterations -gt $i) {
    Write-Output "  #$i/$numberOfIterations >> Scroll lock sent. Waiting $sleepIntervalMin minutes!"

    $WShell.SendKeys("{SCROLLLOCK}")
    $WShell.SendKeys("{SCROLLLOCK}")
    
    sleep 1
    $WShell.SendKeys("{SCROLLLOCK}")
    sleep ([int]$sleepIntervalSec - 1)

    $i++
}
