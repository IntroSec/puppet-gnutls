# gnutls


# example 
    gnutls::generate_key{'generate TLS keys':
      certfile    => '/etc/ssl/certs/cert.out',
      keyfile     => '/etc/ssl/certs/key.out',
      user        => 'root',
    }
    
# Hiera subject data example

gnutls_subj: "/C=CA/ST=Ontario/L=CITY/O=COMPANY ORG/OU=IT Department/CN=example.com"
