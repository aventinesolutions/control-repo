class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    =>
      'AAAAB3NzaC1yc2EAAAADAQABAAACAQDGtL593K5kMhiK5N8yxGYhofifo/wVxey/vRnM74/C+ugrx4kjCByNP77fUN1P3iMNtbCTTqjtl6RFFCPX15hdTcfGiL9bcUcTdB+EqOhWJk6wV2YRNNqqCGrGPAn6e+/fT2ySv3/fwXM+fFgb8anTnaBARaJUbWDgeG87DiBMUOsV7e+OkE9zaGCGDEH+EjybU3c+KKhAQxZ5GZP2o9XvNJACkgjsQ3Dy9jXkxCwWEL00k/hPA94msRv0rwjlh9fjT+BFnM+KlSu6P2Mu4Ip2ZNmeyIivjSbjx9eOtBM59oF8YcF7TkEUTATaE6j4/mfOe1PU0TfC4QrZ68xFDnxGa2tms1ujGn6oyRmxCsGQjzyJMGODaIe20ACLsZhk1+V5EtOyTcfWtMsQgaG6dqZ+Wqmej9bpPdUEFEIgXffKn9Ht1SF7Ktt5e2WFpZJKvGNqdQX3HYpHWnT0+SBgBNrFJ00K+SZUIJESNNcH4Yb4f9mXoLho//WSHSlHuS2IaoqhYOaCsjhk26OiDKUpBg1yFH0Pha7Lirb9+mGcSKFJ8ImgDpL1uGVMJO8C2vpOc/2YJV6MW3PtVOrO8pOM6hKgVDeJ/rgrzvVXsL7q0OCLknIleuebKoftlyW52ErYbOayJqP/h4YMFtcq0Cd0xOT03KGFmwosCA/cH+Waz4ZFQQ=='
    ,
  }
}
