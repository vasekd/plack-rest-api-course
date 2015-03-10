use Data::Dumper;
use strict;
use warnings;

my $app = sub {
	my $env = shift;

    return [ 200, [ 'Content-Type' => 'text/plain' ], [ Dumper($env) ] ];
};
