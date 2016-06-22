class googleauth::install {
  package { 'libpamgoogle':
    ensure => present,
    name   => $::googleauth::params::gauth_package_name,
  }
}
