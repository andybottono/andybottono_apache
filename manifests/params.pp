class apache::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'httpd'
      $service_name = 'httpd'
    }
    'Redhat', 'Amazon': {
      $package_name = 'httpd'
      $package_name = 'httpd'
    }
    defaults: {
      fail("${::operatingsystem} not supported")
    }
  }

  $webpage_text = 'Pueppet was here 2016'
}
