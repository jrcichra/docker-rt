use utf8;

Set( $WebPort,     RT_WEB_PORT );
Set( $MailCommand, "testfile" );
Set( $WebDomain,   'RT_WEB_DOMAIN' );
Set( @ReferrerWhitelist,
    qw(RT_WEB_DOMAIN:RT_WEB_PORT localhost:80 127.0.0.1:80) );

1;
