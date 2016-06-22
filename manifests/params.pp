class sts::params {
   #repos 
  $repos = hiera('sts::params::repos', {
    'epel' => {
      'descr'    => 'Extra Packages for Enterprise Linux add-ons',
      'baseurl'  => "http://linuxsoft.cern.ch/epel/${lsbmajdistrelease}/\$basearch",
      'gpgcheck' => 0,
      'enabled'  => 1,
      'protect'  => 1,
     },
    'EGI-trustanchors' => {
      'descr'    => 'EGI-trustanchors',
      'baseurl'  => 'http://repository.egi.eu/sw/production/cas/1/current/',
      'gpgcheck' => 0,
      'enabled'  => 1,
    },
    'wlcg' => {
      'descr'    => 'WLCG Repository',
      'baseurl'  => "http://linuxsoft.cern.ch/wlcg/sl6/\$basearch",
      'protect'  => 1,
      'enabled'  => 1,
      'priority' => 20,
      'gpgcheck' => 0,
   },
   'EMI-3-base' = {
      'descr'    => 'EMI 3 base',
      'baseurl'  => 'http://emisoft.web.cern.ch/emisoft/dist/EMI/3/sl6/\$basearch/base',
      'protect'  => 1,
      'enabled'  => 1,
      'priority' => 40,
      'gpgcheck' => 0,
   },
   'EMI-3-contribs' = {
      'descr'    => 'EMI-3-contribs',
      'baseurl'  => 'http://emisoft.web.cern.ch/emisoft/dist/EMI/3/sl6/\$basearch/contribs',
      'protect'  => 1,
      'enabled'  => 1,
      'priority' => 40,
      'gpgcheck' => 0,
   },
   'EMI-3-third-party' = {
      'descr'    => 'EMI-3-third-party',
      'baseurl'  => 'http://emisoft.web.cern.ch/emisoft/dist/EMI/3/sl6/$basearch/third-party',
      'protect'  => 1,
      'enabled'  => 1,
      'priority' => 40,
      'gpgcheck' => 0,
   },
    'EMI-3-updates' = {
      'descr'    => 'EMI-3-third-updates',
      'baseurl'  => 'http://emisoft.web.cern.ch/emisoft/dist/EMI/3/sl6/$basearch/updates',
      'protect'  => 1,
      'enabled'  => 1,
      'priority' => 40,
      'gpgcheck' => 0,
   },
   )
}

