class emi::install {
  package{$emi::params::packages_for_all:
    ensure => installed,
  }
  package{$emi::params::packages[$emi::profile]:
    ensure => installed,
  }
  emi::wlcg_voms_package{$emi::vos:}
}
