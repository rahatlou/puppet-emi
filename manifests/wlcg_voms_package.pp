define emi::wlcg_voms_package (
  $VO
)
{
  package{"wlcg-voms-$VO":
    ensure => present
  }
}
