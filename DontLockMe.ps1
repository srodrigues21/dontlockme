<#inputs#>
$hours = 8 #in hours
$sleepInterval = 240 #in seconds
<#/inputs#>


Write-Output "________              /\ __    .____                  __                        ._._._."
Write-Output "\______ \   ____   ___)//  |_  |    |    ____   ____ |  | __   _____   ____     | | | |"
Write-Output " |    |  \ /  _ \ /    \   __\ |    |   /  _ \_/ ___\|  |/ /  /     \_/ __ \    | | | |"
Write-Output " |    `   (  <_> )   |  \  |   |    |__(  <_> )  \___|    <  |  Y Y  \  ___/     \|\|\|"
Write-Output "/_______  /\____/|___|  /__|   |_______ \____/ \___  >__|_ \ |__|_|  /\___  >    ______"
Write-Output "        \/            \/               \/          \/     \/       \/     \/     \/\/\/"
Write-Output "                                                                                       "
Write-Output "version 2.0                                                                            "
Write-Output "                                                                                       "
Write-Output "Running $numberOfIterations iterations in $hours hour(s)...                            "
Write-Output "Log:                                                                                   "


# Unload the existing MySendKeys type
#[AppDomain]::CurrentDomain.GetAssemblies() | ForEach-Object {
#    $_.GetTypes() | Where-Object { $_.FullName -eq "MySendKeys" } | ForEach-Object {
#        [System.Runtime.InteropServices.Marshal]::ReleaseComObject($_) | Out-Null
#    }
#}

# Now you can load/updat the SendKeys class definition
# Assembly definition containing the SendKeys method
Add-Type -TypeDefinition @'
using System;
using System.Runtime.InteropServices;
public class MySendKeys {
    [DllImport("user32.dll")]
    public static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, UIntPtr dwExtraInfo);
    
    // F9 key code   
    public const byte VK_F9 = 0x78;    
    // Scroll Lock key code
    public const byte VK_SCROLL = 0x91;  
    // NUMLOCK key code
    public const byte VK_NUMLOCK = 0x90;
    // Right Shift key code
    public const byte VK_RSHIFT = 0xA1;
    
    public const uint KEYEVENTF_KEYUP = 0x0002;
    public static void MySendKey(byte keyCode) {
        keybd_event(keyCode, 0, 0, UIntPtr.Zero);
        keybd_event(keyCode, 0, KEYEVENTF_KEYUP, UIntPtr.Zero);
    }
}
'@

# Function to simulate the key press
function SimulateKeyPress {
    [MySendKeys]::MySendKey([MySendKeys]::VK_F9)
    #[MySendKeys]::MySendKey([MySendKeys]::VK_RSHIFT)
    #[MySendKeys]::MySendKey([MySendKeys]::VK_SCROLL)
    #[MySendKeys]::MySendKey([MySendKeys]::VK_NUMLOCK)
    
}


# Calculate the number of cicles to run the script
$numberOfIterations = ($hours*60*60)/$sleepInterval
$i = 1

# Main loop to simulate key press every 5 minutes
while ($numberOfIterations -gt $i) {
    Write-Output "  #$i/$numberOfIterations >>   lock sent. Waiting another $sleepInterval seconds!"
    SimulateKeyPress
    
    sleep ($sleepInterval)
    $i++
}



# List of keys:
#Key                  Key Code
#-------------------  --------
#Backspace            0x08
#Tab                  0x09
#Enter                0x0D
#Shift                0x10
#Ctrl                 0x11
#Alt                  0x12
#Pause/Break          0x13
#Caps Lock            0x14
#Escape               0x1B
#Space                0x20
#Page Up              0x21
#Page Down            0x22
#End                  0x23
#Home                 0x24
#Left Arrow           0x25
#Up Arrow             0x26
#Right Arrow          0x27
#Down Arrow           0x28
#Print Screen         0x2C
#Insert               0x2D
#Delete               0x2E
#Left Windows Key     0x5B
#Right Windows Key    0x5C
#Applications Key     0x5D
#Sleep                0x5F
#Numpad 0             0x60
#Numpad 1             0x61
#Numpad 2             0x62
#Numpad 3             0x63
#Numpad 4             0x64
#Numpad 5             0x65
#Numpad 6             0x66
#Numpad 7             0x67
#Numpad 8             0x68
#Numpad 9             0x69
#Multiply             0x6A
#Add                  0x6B
#Separator            0x6C
#Subtract             0x6D
#Decimal              0x6E
#Divide               0x6F
#F1                   0x70
#F2                   0x71
#F3                   0x72
#F4                   0x73
#F5                   0x74
#F6                   0x75
#F7                   0x76
#F8                   0x77
#F9                   0x78
#F10                  0x79
#F11                  0x7A
#F12                  0x7B
#Num Lock             0x90
#Scroll Lock          0x91
#Left Shift           0xA0
#Right Shift          0xA1
#Left Ctrl            0xA2
#Right Ctrl           0xA3
#Left Alt             0xA4
#Right Alt            0xA5
