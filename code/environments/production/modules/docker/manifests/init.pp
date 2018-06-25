class docker {

  $comandos = "/usr/bin/curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - ; /usr/bin/add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable' ; /usr/bin/apt update -y"




#  exec {"apt-get update":
#   command => "/bin/apt-get update",
#  }
#
#  exec {
#    command => "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -",
#  }
#
  $pacotes = ["apt-transport-https","ca-certificates","curl","software-properties-common"]

  package {$pacotes:
    ensure => present,
  }

#  exec {"":
#    command => 'add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"',
#  }
#
#  exec {"apt-get update":
#    command => "/bin/apt-get update",
#  }
#
  exec {"Rodando Comandos":
    command => $comandos,
  }

  package {"docker-ce":
    ensure => present,
  }


}
