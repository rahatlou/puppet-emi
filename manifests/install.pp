class emi::install {
  package{$emi::params::packages[$emi::profile]:
    ensure => installed,
    notify => Class['emi::configure']
  }
  emi::wlcg_voms_package{$emi::vos:}
}
