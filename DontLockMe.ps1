$WShell = New-Object -Com "Wscript.Shell"

Write-Output "________              /\ __    .____                  __                        ._._._."
Write-Output "\______ \   ____   ___)//  |_  |    |    ____   ____ |  | __   _____   ____     | | | |"
Write-Output " |    |  \ /  _ \ /    \   __\ |    |   /  _ \_/ ___\|  |/ /  /     \_/ __ \    | | | |"
Write-Output " |    `   (  <_> )   |  \  |   |    |__(  <_> )  \___|    <  |  Y Y  \  ___/     \|\|\|"
Write-Output "/_______  /\____/|___|  /__|   |_______ \____/ \___  >__|_ \ |__|_|  /\___  >    ______"
Write-Output "        \/            \/               \/          \/     \/       \/     \/     \/\/\/"
Write-Output "                                                                                       "
Write-Output "version 1.1                                                                            "
Write-Output "                                                                                       "

<#inputs#>
$hours = 8 #in hours
$sleepInterval = 60 #in seconds
<#/inputs#>

$numberOfIterations = ($hours*60*60)/$sleepInterval
$i = 1
Write-Output "Running $numberOfIterations iterations in $hours hour(s)...                            "
Write-Output "Log:                                                                                   "

while ($numberOfIterations -gt $i) {
    Write-Output "  #$i/$numberOfIterations >> Scroll lock sent. Waiting another $sleepInterval seconds!"

    $WShell.SendKeys("{SCROLLLOCK}")
    $WShell.SendKeys("{SCROLLLOCK}")
    
    sleep 1
    $WShell.SendKeys("{SCROLLLOCK}")
    sleep ($sleepInterval - 1)

    $i++
}