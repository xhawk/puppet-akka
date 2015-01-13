# == Class: akka
#
# Full description of class akka here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'akka':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Tomi Savolainen <tomi@tomisavolainen.net>
#
# === Copyright
#
# Copyright 2015 ???
#
class akka {

	package { "unzip":
	    ensure => "installed"
	}

	archive { 'akka_2.10-2.3.8': 
	    target => '/opt',
	    ensure => 'present',
	    extension => 'zip',
	    url => 'http://downloads.typesafe.com/akka/akka_2.10-2.3.8.zip?_ga=1.199506343.863568892.1419320473',
	}
}
