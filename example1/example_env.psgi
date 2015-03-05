use Data::Dumper;
use strict;
use warnings;

my $app = sub {
	my $env = shift;
    print "ENV: ".Dumper($env);

    return [ 200, [ 'Content-Type' => 'text/plain' ], [ 'Hello World' ] ];
};
