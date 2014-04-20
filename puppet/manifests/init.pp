

include apache
include php
include git
include phpmyadmin

class { 'apt':
  force_aptget_update => true,
}

php::pear::module { 'phing':
	repository  	=> 'pear.phing.info',
	alldeps 		=> 'true',
	use_package 	=> 'no'
}

php::pear::module { 'VersionControl_Git-0.4.4':
	use_package	=> 'no'
}


php::pecl::module { 'xdebug': }

class { "mysql":
	root_password => 'root',
	monitor_target => '0.0.0.0'
}