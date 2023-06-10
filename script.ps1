$serviceName = 'CORRELOG MESSAGE'


$Servers = Get-Content -path C:\prakash1.txt


foreach($server in $servers)
{

 

If ((Get-Service $serviceName -ComputerName $server -ErrorAction SilentlyContinue).Status -eq 'Running' ) {

 

        Write-Host "$server - $serviceName RUNNING" -ForegroundColor Green -ErrorAction SilentlyContinue

 

    } Elseif ((Get-Service $serviceName -ComputerName $server  -ErrorAction SilentlyContinue).Status -eq 'Stopped') {

 

        Write-Host "$server - $serviceName NOT RUNNING"-ForegroundColor Red -ErrorAction SilentlyContinue

 

    } Else {

 

    Write-Host "$server - NOT INSTALLED / UNREACHABLE" -ForegroundColor Yellow -ErrorAction SilentlyContinue

 

}
}