class sts::config (

  #standalone server config

  $sts_host = $sts::params::sts_host,
  $sts_port = $sts::params::sts_port,
  $scheme   = $sts::params::scheme,
  $webapp_context = $sts::params::webapp_context,
  $war_file = $sts::params::war_file,
  $certificate_file= $sts::params::certificate_file,
  $certificate_key = $sts::params::certificate_key,
  $crl_update_interval = $sts::params::crl_update_interval,
  $truststore_dir = $sts::params::truststore_dir,
  $max_request_queue_size = $sts::params::max_request_queue_size,
  $max_connections  = $sts::params::max_connections,
  $shutdown_command = $sts::params::shutdown_command,
  $shutdown_port = $sts::params::shutdown_port,
  $namespace_checking_mode = $sts::params::namespace_checking_mode,
  $clr_checking_mode = $sts::params::clr_checking_mode,
  $ocsp_checking_mode = $sts::params::ocsp_checking_mode,
  $proxy_support = $sts::params::proxy_support,
  $client_auth = $sts::params::client_auth,
  $require_client_auth = $sts::params::require_client_auth,

  #messages config
  $clockSkew = $sts::params::clockSkew,
  $lifetime = $sts::params::lifetime,
  $require_issue_instant = $sts::params::require_issue_instant,
  $require_framework_instant = $sts::params::require_framework_instant,
  $require_message_id = $sts::params::require_message_id,
  $require_recipient_id = $sts::params::require_recipient_id,
  $schema_directory = $sts::params::schema_directory,
  $require_signature = $sts::params::require_signature,
  $enable_x509 = $sts::params::enable_x509,
  $enable_proxy = $sts::params::enable_proxy,
  
  #SAML config
  $entity_id = $sts::params::entity_id,
  $consumer_service_url = $sts::params::consumer_service_url,
  $metadata_file = $sts::params::metadata_file,
  $metadata_frequency = $sts::params::metadata_frequency,
  $saml_certificate_file = $sts::params::saml_certificate_file,
  $saml_certificate_key = $sts::params::saml_certificate_key,
  $saml_certificate_key_pass = $sts::params::saml_certificate_key_pass,
  $assertion_life_time = $sts::params::assertion_life_time,
  $require_request_id = $sts::params::require_request_id,
  $require_id_lifetime = $sts::params::require_id_lifetime,
  $require_id_sweep_frequency = $sts::params::require_id_sweep_frequency,
  $authn_lifetime = $sts::params::authn_lifetime,
  $require_authn_statement =  $sts::params::require_authn_statement,
  $require_authn_locality = $sts::params::require_authn_locality,
  $require_conditions = $sts::params::require_conditions,
  $require_audience = $sts::params::require_audience,
  $remote_address_header = $sts::params::remote_address_header,

  #LDAP config

  $enable_ldap = $sts::params::enable_ldap,
  $ldap_server_url = $sts::params::ldap_server_url,
  $use_start_tls = $sts::params::use_start_tls,
  $base_dn = $sts::params::base_dn,
  $block_wait_time = $sts::params::block_wait_time,
  $min_pool_size = $sts::params::min_pool_size,
  $max_pool_size = $sts::params::max_pool_size,
  $validate_periodically =  $sts::params::validate_periodically,
  $validate_period = $sts::params::validate_period,

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
