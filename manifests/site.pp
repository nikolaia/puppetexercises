import "nodes.pp"

exec { 'Test':
  command   => '$(Write-Host "YOLO 2.0")',
  provider  => powershell,
  logoutput => true
}