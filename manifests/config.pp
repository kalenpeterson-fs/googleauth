class googleauth::config {
  file { $::googleauth::params::gauth_pam_openvpn:
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => epp('googleauth/openvpn.epp', {'gauth_pam_lib' => $::googleauth::params::gauth_pam_lib}),
    require => Class['googleauth::install'],
  }
}
