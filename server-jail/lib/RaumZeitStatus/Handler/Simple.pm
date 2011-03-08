# vim:ts=4:sw=4:expandtab
package RaumZeitStatus::Handler::Simple;

use strict;
use parent qw(Tatsumaki::Handler);
use v5.10;
use RaumZeitStatus::Status;
our $VERSION = '0.01';
__PACKAGE__->asynchronous(1);

my $status = RaumZeitStatus::Status->new;

sub get {
    my ($self) = @_;

    $self->response->content_type('text/plain');
    $self->write($status->total_status);
    $self->finish;
}

1
