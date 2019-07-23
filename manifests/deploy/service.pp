#
# @summary Base profile
#
# === Parameters
#
# None
#
# === Variables
#
# None
#
# === Examples
#
#  include openvpn::deploy::service
#
# === Authors
#
# Phil Bayfield https://bitbucket.org/Philio/
#

class openvpn::deploy::service (
		Optional[String] $host = undef
	){
	if $host {
		service { "openvpn@${clientcert}":
			ensure     => running,
			enable     => true,
			hasrestart => true,
			hasstatus  => true;
		}
	} else {
		service { 'openvpn':
			ensure     => running,
			enable     => true,
			hasrestart => true,
			hasstatus  => true;
		}
	}
}
