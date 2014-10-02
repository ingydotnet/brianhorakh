#!/usr/bin/env perl

use strict;
use Pegex::Parser;
use Pegex::Grammar;
use Pegex::Tree::Wrap;
use IO::All;
use XXX;

my $grammar = io->file('new-style.pgx')->all;

my $parser = Pegex::Parser->new(
    grammar => Pegex::Grammar->new(text => $grammar),
    receiver => Pegex::Tree::Wrap->new,
    debug => 1,
);

XXX $parser->parse("set \$x ' world'; apply --append;");
