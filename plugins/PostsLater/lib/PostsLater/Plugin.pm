
package PostsLater::Plugin;

use strict;
use warnings;

sub load_config {
    my $plugin = shift;
    my ( $args, $scope ) = @_;

    $plugin->SUPER::load_config(@_);
}

sub save_config {
    my $plugin = shift;
    my ( $args, $scope ) = @_;

    $plugin->SUPER::save_config(@_);
}

1;
