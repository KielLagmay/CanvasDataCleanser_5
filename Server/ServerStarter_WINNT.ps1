# Sources:
# https://stackoverflow.com/questions/27277701/powershell-get-ipv4-address-into-a-variable
# https://stackoverflow.com/questions/47910319/check-powershell-version-and-run-a-function-based-on-the-version
# https://docs.microsoft.com/en-us/powershell/module/nettcpip/get-netipaddress?view=windowsserver2019-ps
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_if?view=powershell-7.1

$PSVersion = $PSVersionTable.PSVersion.Major
if($PSVersion -le 5) {
    $ipV4 = Test-Connection -ComputerName (hostname) -Count 1  | Select -ExpandProperty IPV4Address
    pyro5-ns -n $ipV4.IPAddressToString
}
else {
    $ipV4 = Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias Wi-Fi
    pyro5-ns -n $ipV4.IPAddress
}