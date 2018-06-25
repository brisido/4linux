class base {

  case $::osfamily {

    "RedHat": {
      $pacotes = ["epel-release","git","vim","sysstat","htop","sl","figlet","httpd"]
              }

    "Debian": {
      $pacotes = ["git","vim","sysstat","htop","sl","figlet","apache2"]
              }

  }


  package {$pacotes:
    ensure => present,
          }
 
}
