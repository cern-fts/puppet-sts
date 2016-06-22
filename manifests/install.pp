class sts::install (
  $repos =  $sts::params::repos,
) inherits sts::params {

  #add repos first
  create_resources(yumrepo,$repos)
  
  #fetchcrl installation
  include fetchcrl

  Class[sts::install] -> Class[sts::config]

  package {"sts":
    ensure => present
  }
}
