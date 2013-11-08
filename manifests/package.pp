class gnutls::package {

    package{['gnutls-bin','libgnutls-dev']:
        ensure  => installed,
    }
}
