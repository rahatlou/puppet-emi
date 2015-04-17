class emi::install {
  package{$packages::emi::params[$emi::profile]:
    ensure => installed
  }
}
