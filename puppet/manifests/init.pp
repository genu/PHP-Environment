

include apache
include php
include mysql

class { 'apt':
  force_aptget_update => true,
}

php::pear::module { 'phing':
  repository  => 'pear.phing.info',
  alldeps => 'true',
  use_package => 'no'
}


php::pecl::module { 'xdebug': }