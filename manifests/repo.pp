class emi::repo {

  if ($emi::with_wlcg) {
    yumrepo{'wlcg':
      descr    => 'WLCG Repository',
      baseurl  => 'http://linuxsoft.cern.ch/wlcg/sl6/${architecture}',
      protect  => '1',
      enabled  => '1',
      priority => '50',
      gpgcheck => '0',
    }
    
  }
  
  package{"emi-release-3.0.0":
    ensure   => present,
    source   => $emi::params::emi_rel_rpm,
    provider => 'rpm',
  }
  
}
