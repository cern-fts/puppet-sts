class sts::params (

  #standalone server config

  $sts_host = $::fqdn
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

  $ca_server_url = $sts::params::ca_server_url,
  $dn_pattern = $sts::params::dn_pattern,
  $ca_client_certificate = $sts::params::ca_client_certificate,
  $ca_client_key = $sts::params::ca_client_key,
  $ca_client_key_file = $sts::params::ca_client_key_file,
  $ca_truststore_dir = $sts::params::ca_truststore_dir,
  $ca_truststore_update_interval = $sts::params::ca_truststore_update_interval,
  $ca_namespace_checking_mode = $sts::params::ca_namespace_checking_mode,
  $ca_clr_checking_mode = $sts::params::ca_clr_checking_mode,
  $ca_oscp_checking_mode = $sts::params::ca_oscp_checking_mode,
  $proxy_support = $sts::params::proxy_support,
  $ca_dn = $sts::params::ca_dn,
  $sender_dn = $sts::params::sender_dn,
  $recipient_dn = $sts::params::recipient_dn,
  $sender_kid = $sts::params::sender_kid,
  $shared_secret = $sts::params::shared_secret,
  $key_size = $sts::params::key_size,

  #VOMS config
  
  $vomses_file = $sts::params::vomses_file,
  $voms_dir = $sts::params::voms_dir,
  $voms_update_interval = $sts::params::voms_update_interval,
  $voms_namespace_checking_mode = $sts::params::voms_namespace_checking_mode,
  $voms_clr_checking_mode =  $sts::params::voms_clr_checking_mode,
  $voms_oscp_checking_mode = $sts::params::voms_oscp_checking_mode,
  $voms_key_size = $sts::params::voms_key_size,
  $link_update_interval = $sts::params::link_update_interval,
  $voms_base_url = $sts::params::voms_base_url,
  $vo_name = $sts::params::vo_name,
  $match_attribute_name = $sts::params::match_attribute_name,
  $voms_client_certificate = $sts::params::voms_client_certificate,
  $voms_client_key = $sts::params::voms_client_key,
  $voms_client_key_pass = $sts::params::voms_client_key_pass,
  $voms_truststore_dir = $sts::params::voms_truststore_dir,
  $incoming_attribute_id = $sts::params::incoming_attribute_id,
  $incoming_link_attribute_id = $sts::params::incoming_link_attribute_id,
  $attribute_link_cache = $sts::params::attribute_link_cache,
  $proxy_path_length = $sts::params::proxy_path_length,


) inherits sts::params {


}
