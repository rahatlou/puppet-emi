class emi::install {
  package{$emi::params::packages[$emi::profile]:
    ensure => installed
  }
  emi::wlcg_voms_package{$vos:}
}
