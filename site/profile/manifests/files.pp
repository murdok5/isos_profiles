class profile::files {
  if $::facts['osfamily'] = 'RedHat' {
    file { '/tmp/foo.txt':
      ensure   => present,
      content  => 'This is some text in my file Chris W. profane'
    }
  }
  if $::facts['osfamily'] = 'Windows' {
    file { 'C:\temp\foo.txt':
      ensure   => present,
      content  => 'This is some text in my file'
    }
  }
}
