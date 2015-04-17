class emi::install {
  package{$emi::params::packages[$emi::profile]:
    ensure => installed
  }
}
