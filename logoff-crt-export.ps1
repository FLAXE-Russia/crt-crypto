$objUser = New-Object System.Security.Principal.NTAccount("$env:UserName")
$strSID = $objUser.Translate([System.Security.Principal.SecurityIdentifier])
$from = "HKLM\SOFTWARE\WOW6432Node\Crypto Pro\Settings\Users\$($strSID.Value)"
$testreg = "$from\Keys"
$userdir = "C:\Users\$($env:UserName)\reg\"
$to = "C:\Users\$($env:UserName)\reg\keys.reg"
if (Test-Path -Path $testreg){
if (-not(Test-Path -Path $userdir)) {
    New-Item -Path $userdir -ItemType Directory | Out-Null
}

REG EXPORT $from $to /y
}
