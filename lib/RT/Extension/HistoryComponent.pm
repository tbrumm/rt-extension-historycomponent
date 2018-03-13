use strict;
use warnings;
package RT::Extension::HistoryComponent;

our $VERSION = '0.01';

=head1 NAME

RT-Extension-HistoryComponent - Provides a portlet to list recently viewed tickets

=head1 DESCRIPTION

RT already got a way to see recently viewed tickets. However, it's buried underneath three main menu levels
and easy to miss.

This extension provides a simple portlet that looks no other than any other ticket-list portlet. But it moves
the ticket listing from the mentioned main menu to a more visible and accessible location on "RT at a glance".

No configuration required.

=head1 RT VERSION

Works with RT 4.4.2

=head1 INSTALLATION

=over

=item C<perl Makefile.PL>

=item C<make>

=item C<make install>

May need root permissions

=item Edit your F</opt/rt4/etc/RT_SiteConfig.pm>

Add this line:

    Plugin('RT::Extension::HistoryComponent');

=item Clear your mason cache

    rm -rf /opt/rt4/var/mason_data/obj

=item Restart your webserver

=back

=head1 AUTHOR

NETWAYS GmbH <lt>info@netways.de<gt>

=for html <p>All bugs should be reported via email to <a
href="mailto:bug-RT-Extension-HistoryComponent@rt.cpan.org">bug-RT-Extension-HistoryComponent@rt.cpan.org</a>
or via the web at <a
href="http://rt.cpan.org/Public/Dist/Display.html?Name=RT-Extension-HistoryComponent">rt.cpan.org</a>.</p>

=for text
    All bugs should be reported via email to
        bug-RT-Extension-HistoryComponent@rt.cpan.org
    or via the web at
        http://rt.cpan.org/Public/Dist/Display.html?Name=RT-Extension-HistoryComponent

=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2018 by NETWAYS GmbH

This is free software, licensed under:

  The GNU General Public License, Version 2, June 1991

=cut

# Automatically extend $HomepageComponents. Avoids the need to
# maintain the component list when installing this extension.
my @components = @{$RT::Config->Get('HomepageComponents')};
push(@components, 'RT-Extension-HistoryComponent');
$RT::Config->Set('HomepageComponents', \@components);

1;
