class profile::base {
  include profile::ssh_server
  user { 'admin':
    ensure => present,
  }
}
