class profile::caddy_full {
  file { 'c:\Apps\Content_API':
    ensure => 'file',
    mode   => '0660',
    owner  => 'BUILTIN',
    group  => 'Users',
    source => 'c:\Temp\dev\Content_API_HOLD',
    recurse => true,
  }
}
