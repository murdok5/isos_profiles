class profile::mobile_service {
  file { 'c:\Apps\MobileService':
    ensure  => 'file',
    mode    => '0660',
    owner   => 'BUILTIN',
    group   => 'Users',
    source  => 'c:\Temp\MobileService\MobileService',
    recurse => true,
  }
  file { 'c:\Apps\MobileService\Web.config':
    ensure => 'file',
    mode   => '0660',
    owner  => 'BUILTIN',
    group  => 'Users',
    source => 'c:\Temp\MobileService\Config Files\Web.qa.config',
    #recurse => true,
  }
}
