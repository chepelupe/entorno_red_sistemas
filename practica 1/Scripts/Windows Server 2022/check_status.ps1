Write-Host "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
Write-Host "">>>INFORMACION DEL SISTEMA<<<"
Write-Host ">>>NOMBRE DEL HOST: $env:COMPUTERNAME<<<"
Write-Host ""
Write-Host ">>>DIRECCIONES IP:<<<"
ipconfig | findstr IPv4
Write-Host  ""
Write-Host ">>>ESPACIO TOTAL DISPONIBLE DE MEMORIA C:<<<"
$disk = Get-WmiObject Win32_LogicalDisk - Filter "DeviceID = 'C:'"
$sizeGB = [math]::Round($disk.Size/1GB, 2)
$freeGB = [math]::Round($disk.FreeSpace/1GB, 2)
Write-Host "Total: ${sizeGB} GB"
Write-Host "Libre: ${freeGB} GB"
Write-Host "Usado: $([math}::Round(($disk.Size - $disk.FreeSpace)/1GB, 2)) GB"