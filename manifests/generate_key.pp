define gnutls::generate_key(
    $certfile,
    $keyfile,
    $user,
    $subj = hiera('gnutls_subj', '/C=CA/ST=Ontario/L=City/O=Example ORG/OU=IT Department/CN=example.com'),
) {

    include gnutls::package
    
    exec{"generate certfile ${certfile} and keyfile ${keyfile} via openssl":
        command     => "/usr/bin/openssl req -x509 -nodes -newkey rsa:4096 -keyout ${keyfile} -out ${certfile} -subj '${subj}'",
        unless      => "/usr/bin/test -f ${certfile} && /usr/bin/test -f ${keyfile}",
        user        => $user,
        logoutput   => true,
    }
}
