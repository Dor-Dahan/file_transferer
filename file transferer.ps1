# ©made by dor©
$linkname = Read-Host "enter Shortcut name= "
$cpn = Get-Content .\iplist.txt
foreach($name in $cpn){
        Copy-Item -path ".\XXfilenameXX" -Destination "\\$name\c$\Windows" -Force -Recurse -ErrorAction SilentlyContinue
    $users = Get-ChildItem -Directory \\$name\c$\users
    foreach($user in $users){
        Copy-Item ".\$linkname.lnk" -Destination "\\$name\c$\Users\$user\Desktop" -ErrorAction SilentlyContinue
        }} 
Copy-Item ".\$linkname.lnk" -Destination "\\$name\c$\Users\Default\Desktop" -ErrorAction SilentlyContinue
