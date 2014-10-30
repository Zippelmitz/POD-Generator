package Module::Documentation;

use strict;
use warnings;

use Scalar::Util qw{reftype};

#Global-ish state.  modules2doc allows things to work with multiple mods that depend on each other.
my $modules2doc = {};

my $documentMapTemplate = {
    'synopsis' => '',
    'types'    => '',
    'methods'  => [],
    'notes'    => '',
    'see_also' => '',
    'copy'     => ''
};

sub SYNOPSIS {

}

sub AUTHORS {

}

sub SEE_ALSO {

}

sub NOTES {

}

sub COPYRIGHT_AND_LICENSE {

}

sub _subdoc {

}

sub doc {
    my ($func, @args) = @_;
    return if $0 ne 'genpod';
    &$func(@args) if reftype($func) eq 'CODE';
    _subdoc($func,@args);
}

sub getdoc {
    return if $0 ne 'genpod';

}
