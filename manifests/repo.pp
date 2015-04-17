class emi::repo {

  package{"emi-release-3.0.0":
    ensure   => present,
    source   => $emi::params::emi_rel_rpm,
    provider => 'rpm',
  }
  
}
