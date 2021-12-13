# needs https://www.microsoft.com/en-us/download/details.aspx?id=45520

Get-WindowsCapability -Name RSAT.ActiveDirectory* -Online | Add-WindowsCapability -Online


Get-ADComputer -Filter { OperatingSystem -Like '*'} |
	ForEach-Object{
		Get-Service -Name *Apache* -ComputerName $psitem
	} |
	Where-Object{
	   #state your filter requirements here
	}