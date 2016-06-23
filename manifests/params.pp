class sts::params {

  #standalone server config

  $sts_host = "${::fqdn}"
  $sts_port = 8443
  $scheme   = 'https'
  $webapp_context = 'sts'
  $war_file = '/usr/share/sts/wars/sts-server-1.0.0.war'
  $certificate_file= '/etc/grid-security/hostcert.pem'
  $certificate_key = '/etc/grid-security/hostkey.pem'
  $crl_update_interval = 600000
  $truststore_dir = '/etc/grid-security/certificates'
  $max_request_queue_size = undef
  $max_connections  = undef
  $shutdown_command = 'shutdown'
  $shutdown_port = 8444
  $namespace_checking_mode = 'EUGRIDPMA'
  $clr_checking_mode = 'REQUIRE'
  $ocsp_checking_mode = 'IF_AVAILABLE'
  $proxy_support = 'ALLOW'
  $client_auth = false
  $require_client_auth = false

  #messages config
  $clockSkew = 300000
  $lifetime = 300000
  $require_issue_instant = true
  $require_framework_instant = true
  $require_message_id = true
  $require_recipient_id = undef
  $schema_directory = '/usr/share/sts/schema'
  $require_signature = false
  $enable_x509 = false
  $enable_proxy = true
  
  #SAML config
  $entity_id = undef #needed
  $consumer_service_url = undef #needed
  $metadata_file = '/usr/share/sts/metadata'
  $metadata_frequency = 300000
  $saml_certificate_file = '/etc/grid-security/hostcert.pem'
  $saml_certificate_key = '/etc/grid-security/hostkey.pem'
  $saml_certificate_key_pass = undef
  $assertion_life_time = 300000
  $require_request_id = false
  $require_id_lifetime = 300000
  $require_id_sweep_frequency = 300000
  $authn_lifetime = 86400000
  $require_authn_statement =  true
  $require_authn_locality = false
  $require_conditions = true
  $require_audience = true
  $remote_address_header = 'X-Forwarded-For'

  #LDAP config

  $enable_ldap = false
  $ldap_server_url = 'ldap://127.0.0.1'
  $use_start_tls = false
  $base_dn = 'dc=people,dc=organization,dc=com'
  $block_wait_time = 5000
  $min_pool_size = 5
  $max_pool_size = 20
  $validate_periodically = false
  $validate_period = 30

  #CA Client config

  $ca_server_url = 'https://ca.cern.ch:443/iotaca-services/sts/Sts.asmx'
  $dn_pattern = 'CN=\${http://schemas.xmlsoap.org/claims/CommonName}, O=Organization, DC=sts, DC=cern, DC=ch'
  $ca_client_certificate = ' /etc/grid-security/iotacacert.pem'
  $ca_client_key = '/etc/grid-security/iotacakey.pem'
  $ca_client_key_file = undef
  $ca_truststore_dir = '/etc/grid-security/certificates'
  $ca_truststore_update_interval = 600000
  $ca_namespace_checking_mode = 'IGNORE'
  $ca_clr_checking_mode = 'IGNORE'
  $ca_oscp_checking_mode = 'IF_AVAILABLE'
  $ca_proxy_support = 'ALLOW'
  $ca_dn = 'CN=xx CA,OU=xx,O=xx,C=xx'
  $sender_dn = 'C=xx'
  $recipient_dn = 'C=xx'
  $sender_kid = 'keyIdentifier'
  $shared_secret = 'sharedSecret'
  $key_size = 2048

  #VOMS config
  
  $vomses_file = '/etc/grid-security/vomses/vomses'
  $voms_dir = '/etc/grid-security/certificates'
  $voms_update_interval = 300000
  $voms_namespace_checking_mode = 'EUGRIDPMA'
  $voms_clr_checking_mode =  'REQUIRE'
  $voms_oscp_checking_mode = 'IF_AVAILABLE'
  $voms_key_size = 2048
  $link_update_interval = 3600000
  $voms_base_url = 'https://ftsvoms01.cern.ch:8443/voms/bitface'
  $vo_name = '/bitface'
  $match_attribute_name = 'nickname'
  $voms_client_certificate = '/etc/grid-security/hostcert.pem'
  $voms_client_key = '/etc/grid-security/hostkey.pem'
  $voms_client_key_pass = undef
  $voms_truststore_dir = '/etc/grid-security/certificates'
  $incoming_attribute_id = 'http://schemas.xmlsoap.org/claims/CommonName'
  $incoming_link_attribute_id = 'http://schemas.xmlsoap.org/claims/CommonName'
  $attribute_link_cache = '/tmp/sts-link-cache.txt'
  $proxy_path_length = 10
 
  #repos
   #repos 
  $repos =  {
    'epel' => {
      'descr'    => 'Extra Packages for Enterprise Linux add-ons',
      'baseurl'  => "http://linuxsoft.cern.ch/epel/6/\$basearch",
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
   'EMI-3-base' => {
      'descr'    => 'EMI 3 base',
      'baseurl'  => "http://emisoft.web.cern.ch/emisoft/dist/EMI/3/sl6/\$basearch/base",
      'protect'  => 1,
      'enabled'  => 1,
      'priority' => 40,
      'gpgcheck' => 0,
   },
   'EMI-3-contribs' => {
      'descr'    => 'EMI-3-contribs',
      'baseurl'  => "http://emisoft.web.cern.ch/emisoft/dist/EMI/3/sl6/\$basearch/contribs",
      'protect'  => 1,
      'enabled'  => 1,
      'priority' => 40,
      'gpgcheck' => 0,
   },
   'EMI-3-third-party' => {
      'descr'    => 'EMI-3-third-party',
      'baseurl'  => "http://emisoft.web.cern.ch/emisoft/dist/EMI/3/sl6/\$basearch/third-party",
      'protect'  => 1,
      'enabled'  => 1,
      'priority' => 40,
      'gpgcheck' => 0,
   },
    'EMI-3-updates' => {
      'descr'    => 'EMI-3-third-updates',
      'baseurl'  => "http://emisoft.web.cern.ch/emisoft/dist/EMI/3/sl6/\$basearch/updates",
      'protect'  => 1,
      'enabled'  => 1,
      'priority' => 40,
      'gpgcheck' => 0,
   }
  }
}
