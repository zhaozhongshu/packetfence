package pf::dal::_radacct;

=head1 NAME

pf::dal::_radacct - pf::dal implementation for the table radacct

=cut

=head1 DESCRIPTION

pf::dal::_radacct

pf::dal implementation for the table radacct

=cut

use strict;
use warnings;

###
### pf::dal::_radacct is auto generated any change to this file will be lost
### Instead change in the pf::dal::radacct module
###
use base qw(pf::dal);

our @FIELD_NAMES;
our @INSERTABLE_FIELDS;
our @PRIMARY_KEYS;
our %DEFAULTS;
our %FIELDS_META;

BEGIN {
    @FIELD_NAMES = qw(
        acctoutputoctets
        framedprotocol
        acctsessiontime
        calledstationid
        acctinputoctets
        acctstoptime
        nasipaddress
        acctsessionid
        framedipaddress
        groupname
        acctuniqueid
        realm
        servicetype
        nasportid
        callingstationid
        radacctid
        connectinfo_start
        nasporttype
        acctupdatetime
        acctauthentic
        acctstarttime
        username
        acctinterval
        acctterminatecause
        connectinfo_stop
    );

    %DEFAULTS = (
        acctoutputoctets => undef,
        framedprotocol => undef,
        acctsessiontime => undef,
        calledstationid => '',
        acctinputoctets => undef,
        acctstoptime => undef,
        nasipaddress => '',
        acctsessionid => '',
        framedipaddress => '',
        groupname => '',
        acctuniqueid => '',
        realm => '',
        servicetype => undef,
        nasportid => undef,
        callingstationid => '',
        connectinfo_start => undef,
        nasporttype => undef,
        acctupdatetime => undef,
        acctauthentic => undef,
        acctstarttime => undef,
        username => '',
        acctinterval => undef,
        acctterminatecause => '',
        connectinfo_stop => undef,
    );

    @INSERTABLE_FIELDS = qw(
        acctoutputoctets
        framedprotocol
        acctsessiontime
        calledstationid
        acctinputoctets
        acctstoptime
        nasipaddress
        acctsessionid
        framedipaddress
        groupname
        acctuniqueid
        realm
        servicetype
        nasportid
        callingstationid
        connectinfo_start
        nasporttype
        acctupdatetime
        acctauthentic
        acctstarttime
        username
        acctinterval
        acctterminatecause
        connectinfo_stop
    );

    %FIELDS_META = (
        acctoutputoctets => {
            type => 'BIGINT',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 1,
        },
        framedprotocol => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 1,
        },
        acctsessiontime => {
            type => 'INT',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 1,
        },
        calledstationid => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 0,
        },
        acctinputoctets => {
            type => 'BIGINT',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 1,
        },
        acctstoptime => {
            type => 'DATETIME',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 1,
        },
        nasipaddress => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 0,
        },
        acctsessionid => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 0,
        },
        framedipaddress => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 0,
        },
        groupname => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 0,
        },
        acctuniqueid => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 0,
        },
        realm => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 1,
        },
        servicetype => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 1,
        },
        nasportid => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 1,
        },
        callingstationid => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 0,
        },
        radacctid => {
            type => 'BIGINT',
            is_auto_increment => 1,
            is_primary_key => 1,
            is_nullable => 0,
        },
        connectinfo_start => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 1,
        },
        nasporttype => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 1,
        },
        acctupdatetime => {
            type => 'DATETIME',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 1,
        },
        acctauthentic => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 1,
        },
        acctstarttime => {
            type => 'DATETIME',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 1,
        },
        username => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 0,
        },
        acctinterval => {
            type => 'INT',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 1,
        },
        acctterminatecause => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 0,
        },
        connectinfo_stop => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 1,
        },
    );

    @PRIMARY_KEYS = qw(
        radacctid
    );
}

use Class::XSAccessor {
    accessors => \@FIELD_NAMES,
};

=head2 _defaults

The default values of radacct

=cut

sub _defaults {
    return {%DEFAULTS};
}

=head2 field_names

Field names of radacct

=cut

sub field_names {
    return [@FIELD_NAMES];
}

=head2 primary_keys

The primary keys of radacct

=cut

sub primary_keys {
    return [@PRIMARY_KEYS];
}

=head2

The table name

=cut

sub table { "radacct" }

our $FIND_SQL = do {
    my $where = join(", ", map { "$_ = ?" } @PRIMARY_KEYS);
    "SELECT * FROM `radacct` WHERE $where;";
};

=head2 _find_one_sql

The precalculated sql to find a single row radacct

=cut

sub _find_one_sql {
    return $FIND_SQL;
}

=head2 _updateable_fields

The updateable fields for radacct

=cut

sub _updateable_fields {
    return [@FIELD_NAMES];
}

=head2 _insertable_fields

The insertable fields for radacct

=cut

sub _insertable_fields {
    return [@INSERTABLE_FIELDS];
}

=head2 get_meta

Get the meta data for radacct

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
