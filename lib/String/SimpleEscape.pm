package String::SimpleEscape;

# AUTHORITY
# DATE
# DIST
# VERSION

use strict;
use warnings;

use Exporter 'import';
our @EXPORT_OK = qw(simple_escape_string simple_unescape_string);

our %escape = (
    "\012" => "\\n",
    "\t"   => "\\t",
    "\\"   => "\\\\",
    "\""   => "\\\"",
);

our %unescape = (
    "\\n"  => "\012",
    "\\t"  => "\t",
    "\\\\" => "\\",
    "\\\"" => "\"",
);

sub simple_escape_string {
    my $str = shift;
    $str =~ s/[\012\011\\"]/$escape{$str}/g;
    $str;
}
sub simple_unescape_string {
    my $str = shift;
    $str =~ s/(\\n|\\t|\\\\|\\")/$unescape{$str}/g;
    $str;
}

1;
# ABSTRACT: Simple string escaping & unescaping

=head1 FUNCTIONS

=head2 simple_escape_string

=head2 simple_unescape_string


=head1 SEE ALSO

L<String::Escape>

=cut
