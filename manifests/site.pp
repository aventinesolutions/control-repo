node default {
  file { '/root/README':
    ensure  => file,
    content => 'Aventine Solutions',
    owner   => 'root',
  }
}
