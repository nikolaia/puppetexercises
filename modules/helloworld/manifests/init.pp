class helloworld {
	notify { 
		'Hello World!': 
	}

	file {'C:\Scripts\HelloWorld':
    ensure => "directory",
	}

	file {'C:\Scripts\HelloWorld\helloworld.ps1':
		source 	=> "puppet:///modules/helloworld/helloworld.ps1"
	}

	exec { 'runHelloWorld':
	  command   => '.\helloworld.ps1',
	  cwd				=> 'C:\Scripts\HelloWorld',
	  provider  => powershell,
	  logoutput => true
	}
}