package OpenTok::API::Session;

use strict;
use warnings;

our $VERSION = '0.01';

sub new {
    my ($class, %args) = @_;    
    my $self = {
        %args,
    };
    
    bless $self, $class;
    
    return $self;
}

sub getSessionId {
    return shift->{session_id};
}



