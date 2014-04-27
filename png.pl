#!/usr/bin/env perl

use 5.012;

my $DOT=`which dot`;
chomp($DOT);

if ($DOT =~ /which: no/) {
    say "no dotutil, exit!";
    exit 1;
}

if (@ARGV != 2) {
    say "usage: ./png.pl AST_Graph.gv out.png";
}
else {
    say "[+]: $DOT -Tpng $ARGV[0] -o $ARGV[1]";
    system("$DOT -Tpng $ARGV[0] -o $ARGV[1]");
}
