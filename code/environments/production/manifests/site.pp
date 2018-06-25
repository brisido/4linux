node 'default' {

    include config
    #include base
    #include exercicio

}

node 'docker.dexter.com.br' {

    include docker
}
