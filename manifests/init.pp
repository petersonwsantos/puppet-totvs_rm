# == Class: totvs
#
# Full description of class totvs here.
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
#  class { 'totvs':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class totvs {

	file { 'c:\totvs\BDE':
	  ensure => 'directory',
	  group  => 'Todos',
	  source_permissions => ignore,
	}

	#file { 'C:\totvs\BDE\PDOXUSRS.NET':
	#  ensure  => 'file',
	#	source => [ "puppet:///modules/totvs/PDOXUSRS.NET"],
	#}

	file { 'bde_cfg':
		path => 'C:\Program Files (x86)\Common Files\Borland Shared\BDE\idapi32.cfg' , 
		ensure => 'present',
		source => [ "puppet:///modules/totvs/idapi32.cfg"],
		source_permissions => ignore,
	}                              

	file { 'rm_cfg':
		path => 'C:\totvs\CorporeRM\RM.Net\Alias.dat' , 
		ensure => 'present',
		source => [ "puppet:///modules/totvs/Alias.dat"],
		source_permissions => ignore,
	}   
	#File['c:\totvs\BDE']-> File['C:\totvs\BDE\PDOXUSRS.NET']

}

