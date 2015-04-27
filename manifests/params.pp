class emi::params {

  $emi_rel_rpm = 'http://emisoft.web.cern.ch/emisoft/dist/EMI/3/sl6/x86_64/base/emi-release-3.0.0-2.el6.noarch.rpm'
  $yaimbin='/opt/glite/yaim/bin/yaim'
  $yaimlog='/opt/glite/yaim/reconfig.log'
  $packages_for_all = ['yum-plugin-priorities','yum-plugin-protectbase']
  $profiles = ['ui']
  $packages = {
    ui => ['emi-ui','glite-ce-monitor-cli'],
  }
  $nodetype = {
    ui => ['UI']
  }
}
