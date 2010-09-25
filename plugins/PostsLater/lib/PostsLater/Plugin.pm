
package PostsLater::Plugin;

use strict;
use warnings;

my @days = qw(Sunday Monday Tuesday Wednesday Thursday Friday Saturday);

sub load_config {
    my $plugin = shift;
    my ( $args, $scope ) = @_;

    $plugin->SUPER::load_config(@_);

    for my $d (@days) {
        $args->{ 'post_day_' . lc($d) } = $args->{post_day}->{ lc($d) };
    }
}

sub save_config {
    my $plugin = shift;
    my ( $args, $scope ) = @_;

    for my $d (@days) {
        $args->{post_day}->{ lc($d) } = $args->{ 'post_day_' . lc($d) };
    }

    $plugin->SUPER::save_config(@_);
}

1;
