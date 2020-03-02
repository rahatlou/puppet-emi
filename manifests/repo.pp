class emi::repo {

  if ($emi::with_wlcg) {
    yumrepo{'wlcg':
      descr    => 'WLCG Repository',
      baseurl  => "http://linuxsoft.cern.ch/wlcg/sl6/${architecture}",
      protect  => '1',
      enabled  => '1',
      priority => '50',
      gpgcheck => '0',
    }
    
  }
  package{$emi::params::packages_for_all:
    ensure => installed,
  }
  
#
## ShR 2020-03-02: replace old emi-release with epel + UMD4
#
#  package{"emi-release-3.0.0":
#    ensure   => present,
#    source   => $emi::params::emi_rel_rpm,
#    provider => 'rpm',
#    require => Package[$emi::params::packages_for_all]
#  }

  $umdrepopkg = "umd-release-4.1.3-1.el6.noarch"
  package{$umdrepopkg:
    provider        => 'rpm',
    install_options => ['-U'],
    source          => "http://repository.egi.eu/sw/production/umd/4/sl6/x86_64/updates/${umdrepopkg}.rpm"
  }

  package{"epel-release":
    ensure   => present,
    source   => "http://ftp.scientificlinux.org/linux/scientific/6x/x86_64/os/Packages/epel-release-6-8.noarch.rpm",
    provider => 'rpm',
    require => Package[$emi::params::packages_for_all]
  }

  
}
