class exercicio {

  case $::osfamily {

    "RedHat": {
      $pacotes = ["httpd","cronie","git"]

    }

    "Debian": {
      $pacotes = ["apache2","cron","git"]

    }
  }

  package {$pacotes:
    ensure => present,
  }


  $users = ["devops","jorge","judity"]

  user {$users:
    ensure => present,
  }


  file {"/root/.bashrc":
    source => "puppet:///modules/exercicios/bashrc_base",
    ensure => present,
  }

}
