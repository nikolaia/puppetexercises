class helloworld {
	notify { 
		'Hello World!': 
	}

	file {'C:\helloworld.ps1':
		source 	=> "puppet:///modules/helloworld/helloworld.ps1"
	}

	exec { 'runPowershell':
	  command   => '.\helloworld.ps1',
	  cwd				=> 'C:\\',
	  provider  => powershell,
	  logoutput => true
	}
}