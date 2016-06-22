class googleauth::params {
  $gauth_pam_openvpn  = '/etc/pam.d/openvpn'
  case $::osfamily {
    'Debian': {
      $gauth_package_name = 'libpam-google-authenticator'
      $gauth_pam_lib      = '/lib/security/pam_google_authenticator.so'
    }
    default: {
      fail("Module kpeterson-googleauth does not support osfamily: ${::osfamily}")
    }
  }
}
