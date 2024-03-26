
# DontLockMe
A simple PowerShell script to prevent Windows from locking the session.

### Version
1.0 - Non-public version

2.0 - 1st public version

### Inputs
Hours: number of hours to have the script running:
>$hours = 8 #in hours


Sleep interval: number of seconds between keystrokes. It must be less than the Windows session timeout, otherwise the script is useless.
> $sleepInterval = 240 #in seconds
