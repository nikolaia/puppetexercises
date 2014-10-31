import "nodes.pp"

exec { 'Test':
  command   => '$(Write-Host "Hello World from Powershell!")',
  provider  => powershell,
  logoutput => true
}