Get-WindowsCapability -Name RSAT.ActiveDirectory* -Online | Add-WindowsCapability -Online


Get-ADComputer -Filter { OperatingSystem -Like '*Windows Server*'} |
	ForEach-Object{
		Get-Service -Name *Apache* -ComputerName $psitem
	} |
	Where-Object{
	   #state your filter requirements here
	}