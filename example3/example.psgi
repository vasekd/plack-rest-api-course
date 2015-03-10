  use Plack::Builder;

my $app = sub {
  return [ 
    200, 
    [ 'Content-Type' => 'text/plain' ], 
    [ 'Root resource' ] 
  ];
};

my $app1 = sub {
  return [ 
    200, 
    [ 'Content-Type' => 'text/plain' ], 
    [ 'Test App' ] 
  ];
};

builder {

  enable "TimeStats";

  mount "/" => $app;
  mount "/test" => $app1;

};