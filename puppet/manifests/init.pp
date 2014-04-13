

include apache
include php
include mysql
include git

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