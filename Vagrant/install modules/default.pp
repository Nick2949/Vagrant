# very basic installation of the apache2 web server

package { "apache2":
    ensure => "latest"
}
package { "vsftpd":
    ensure => "latest"
}  
package { "xrdp":
    ensure => "latest"
}
exec { 'puppet-script':
  command => 'sh /opt/puppet/install.sh',
  provider => 'shell'
}  
