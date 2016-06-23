# The baseline for module testing used by Puppet Labs is that each manifest
# should have a corresponding test manifest that declares that class or defined
# type.
#
# Tests are then run by using puppet apply --noop (to check for compilation
# errors and view a log of events) or by fully applying the test in a virtual
# environment (to compare the resulting system state to the desired state).
#
# Learn more about module testing here:
# http://docs.puppetlabs.com/guides/tests_smoke.html
#
class{'sts::install':}

class{'sts::config':
   entity_id  => 'https://webfts-dev.cern.ch/',
   consumer_service_url  => 'https://webfts-dev.cern.ch/Shibboleth.sso/SAML2/POST',
}

class{'sts::service':}

