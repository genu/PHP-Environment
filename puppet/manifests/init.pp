exec {'apt-get update':
	command => '/usr/bin/apt-get update'

}

include apache
include php
include mysql

php::pear::module { 'phing':
  repository  => 'pear.phing.info',
  alldeps => 'true',
  use_package => 'no'
}

php::pecl::module { 'xdebug': }