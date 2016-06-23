class sts::service (
) inherits sts::params {

  service{'sts-service':
    ensure     => true,
    enable     => true,
    hasstatus  => true,
  }

}
