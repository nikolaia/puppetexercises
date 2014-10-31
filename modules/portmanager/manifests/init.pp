class portmanager {
	notify { 
		'Opening ports with Portmanager!': 
	}

	file {'C:\Scripts\Portmanager':
    ensure => "directory",
	}

	file {'C:\Scripts\Portmanager\portmanager.ps1':
		source 	=> "puppet:///modules/portmanager/portmanager.ps1"
	}

	exec { 'runPortmanager':
	  command   => '.\portmanager.ps1 -name leetport -port 1337',
	  cwd				=> 'C:\Scripts\Portmanager',
	  provider  => powershell,
	  logoutput => true
	}
}