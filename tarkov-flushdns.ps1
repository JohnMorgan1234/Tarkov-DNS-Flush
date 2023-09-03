if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoExit -NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

Write-Output "No te funciona el Tarkov y persiste con esos errores de connect tan feos? Yo te ayudo bro. :)" 
Write-Output "By CommanderMorgan para Tarkovitas y amigos.`nGithub: https://github.com/johnmorgan1234"
Write-Output "`n########### FLUSHEANDO DNS ###########"
ipconfig /flushdns
Write-Output "`n########### REGISTRANDO DNS #############"
ipconfig /registerdns
Write-Output "`n########### LANZANDO IPCONFIG RELEASE #############"
ipconfig /release
Write-Output "`n######### LANZANDO IPCONFIG RENEW ##########"
ipconfig /renew
Write-Output "`n######### RESETEANDO EL SERVICIO DE WINSOCK ##########`n (Por este comando pedimos los derechos de admin. Sino no funciona)"
netsh winsock reset