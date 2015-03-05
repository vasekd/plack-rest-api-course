  my $app = sub {
      my $env = shift;
      return [ '200',
               [ 'Content-Type' => 'text/plain' ],
               [ "Hello World" ] ];
  };

  my $xheader = sub {
      my $env = shift;

 	  ### App
      my $res = $app->($env);

      ### Post App
      push @{$res->[1]}, 'X-PSGI-Used' => 1;

      return $res;
  };