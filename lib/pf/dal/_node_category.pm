package pf::dal::_node_category;

=head1 NAME

pf::dal::_node_category - pf::dal implementation for the table node_category

=cut

=head1 DESCRIPTION

pf::dal::_node_category

pf::dal implementation for the table node_category

=cut

use strict;
use warnings;

###
### pf::dal::_node_category is auto generated any change to this file will be lost
### Instead change in the pf::dal::node_category module
###
use base qw(pf::dal);

our @FIELD_NAMES;
our @INSERTABLE_FIELDS;
our @PRIMARY_KEYS;
our %DEFAULTS;
our %FIELDS_META;

BEGIN {
    @FIELD_NAMES = qw(
        category_id
        max_nodes_per_pid
        name
        notes
    );

    %DEFAULTS = (
        max_nodes_per_pid => '0',
        name => '',
        notes => undef,
    );

    @INSERTABLE_FIELDS = qw(
        max_nodes_per_pid
        name
        notes
    );

    %FIELDS_META = (
        category_id => {
            type => 'INT',
            is_auto_increment => 1,
            is_primary_key => 1,
            is_nullable => 0,
        },
        max_nodes_per_pid => {
            type => 'INT',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 1,
        },
        name => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 0,
        },
        notes => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 1,
        },
    );

    @PRIMARY_KEYS = qw(
        category_id
    );
}

use Class::XSAccessor {
    accessors => \@FIELD_NAMES,
};

=head2 _defaults

The default values of node_category

=cut

sub _defaults {
    return {%DEFAULTS};
}

=head2 field_names

Field names of node_category

=cut

sub field_names {
    return [@FIELD_NAMES];
}

=head2 primary_keys

The primary keys of node_category

=cut

sub primary_keys {
    return [@PRIMARY_KEYS];
}

=head2

The table name

=cut

sub table { "node_category" }

our $FIND_SQL = do {
    my $where = join(", ", map { "$_ = ?" } @PRIMARY_KEYS);
    "SELECT * FROM `node_category` WHERE $where;";
};

=head2 _find_one_sql

The precalculated sql to find a single row node_category

=cut

sub _find_one_sql {
    return $FIND_SQL;
}

=head2 _updateable_fields

The updateable fields for node_category

=cut

sub _updateable_fields {
    return [@FIELD_NAMES];
}

=head2 _insertable_fields

The insertable fields for node_category

=cut

sub _insertable_fields {
    return [@INSERTABLE_FIELDS];
}

=head2 get_meta

Get the meta data for node_category

=cut

sub get_meta {
    return \%FIELDS_META;
}
 
=head1 AUTHOR

Inverse inc. <info@inverse.ca>

=head1 COPYRIGHT

Copyright (C) 2005-2017 Inverse inc.

=head1 LICENSE

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
USA.

=cut

1;
