package OpenTok::API::Exceptions;

use strict;
use warnings;

use vars qw($VERSION);

$VERSION = 1.43;

my %e;

BEGIN
{
    %e = (  'OpenTok::API::Exception' => {
                description => 'Generic OpenTok exception. Read the message to get more details'
            },
    
            'OpenTok::API::Exception::Auth' => {
                isa         => 'OpenTok::API::Exception',
                description => 'OpenTok exception related to authentication. Most likely an issue with your API key or secret'
            },

            'OpenTok::API::Exception::Request' => {
                isa         => 'OpenTok::API::Exception',
                description => 'OpenTok exception related to the HTTP request. Most likely due to a server error. (HTTP 500 error)'
            },

    );
    
}    
    

use Exception::Class (%e);

