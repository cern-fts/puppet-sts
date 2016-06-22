# == Class: sts
#
# Full description of class xrootd here.
#
# === Parameters
#
#
# === Variables
#
#
# === Examples
#
#
# === Authors
#
# CERN FTS <fts-devel@cern.ch>
#
# === Copyright
#
# Copyright 2012 CERN, unless otherwise noted.
#
class sts (
) inherits sts::params {
  
  Class[sts::install] -> Class[sts::config] -> Class[sts::service]

  class{"sts::install":}
  class{"sts::config":}
  class{"sts::service":}

}
