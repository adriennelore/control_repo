class profile::ssh_server {
  package {'openssh-server':
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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCvj7P1n20bAap4k5NHNZr+Eni7y5R92VSfWMlchZpIK23Ha/N9JiYsBCF8YkoMUqWQuHpd4qAdXSnRKvy1ks3tC7LKSR1kUgJanOYt0jXYPnK7takb2GEsbGlS8n4pCgu6wxZ/QM+GB3rhUR2delg1p3145D+CuMEs6nf1dFMt9SaJzErKJpg0ANujYEl/XAlhjUhs6mVyad6CZhrCfi8AyAQA5csLoVhzvp0eefHsE7KPOYyZ+vAsmQYscyQr78Gqj5jTckLuVW8rMMi7GlLNoeSVUllb30SI1eZi2c5dNmE40P00YsVhP5VEqdmjhmGAUaFS+OfPQKMpzbMcO1l7',
  }  
}
