node default {
  file { '/root/README':
    ensure  => file,
    content => "Aventine Solutions\n",
    owner   => 'root',
  }
}
node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
    ensure  => file,
    content => "Welcome to ${ fqdn } at Aventine Solutions\n",
    owner   => 'root',
  }
}
node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}
