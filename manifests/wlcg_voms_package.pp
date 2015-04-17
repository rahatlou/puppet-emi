define emi::wlcg_voms_package (
  $vo
)
{
  package{"wlcg-voms-${vo}":
    ensure => present
  }
}
