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
  $require_authn_locality = $require_authn_locality,


) inherits sts::params {


}
