class emi::configure {
  $nodes=join($emi::params::nodetype[$emi::profile],' -n ')
  
  $command="${emi::params::yaimbin} -d 6 -c -s ${emi::siteinfo} -n ${nodes} > ${emi::params::yaimlog}"
  
  exec {"yaim-config-${emi::profile}":
    command => $command,
    unless  => "/bin/grep 'YAIM terminated succesfully' ${emi::params::yaimlog}",
  }
}
