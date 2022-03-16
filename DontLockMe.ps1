$WShell = New-Object -Com "Wscript.Shell"
Write-Output "________              /\ __    .____                  __                        ._._._."
Write-Output "\______ \   ____   ___)//  |_  |    |    ____   ____ |  | __   _____   ____     | | | |"
Write-Output " |    |  \ /  _ \ /    \   __\ |    |   /  _ \_/ ___\|  |/ /  /     \_/ __ \    | | | |"
Write-Output " |    `   (  <_> )   |  \  |   |    |__(  <_> )  \___|    <  |  Y Y  \  ___/     \|\|\|"
Write-Output "/_______  /\____/|___|  /__|   |_______ \____/ \___  >__|_ \ |__|_|  /\___  >    ______"
Write-Output "        \/            \/               \/          \/     \/       \/     \/     \/\/\/"
Write-Output "                                                                                       "
Write-Output "version 1.0                                                                            "
Write-Output "                                                                                       "
Write-Output "Log:                                                                                   "
$i = 1;
while (1) {
    Write-Output "  #$i >> Scroll lock sent. Wait another 60 seconds to move again!";
    $WShell.SendKeys("{SCROLLLOCK}");
    $WShell.SendKeys("{SCROLLLOCK}");
    sleep 1;
    $WShell.SendKeys("{SCROLLLOCK}");
    sleep 59;
    $i++;
}