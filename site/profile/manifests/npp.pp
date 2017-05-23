class profile::npp (
    $sourcepath = "c:\\Temp\\dev",
    $installer  = "npp.7.1.Installer.x64.exe",
  ) {
    package { 'notepad plus plus':
      ensure    => 'installed',
      provider  => 'windows',
      source    => "${sourcepath}\\${installer}",
      install_options => [ '/S' ],
    }
}
