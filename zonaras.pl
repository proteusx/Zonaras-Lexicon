#!/usr/bin/perl -w -CSDA
#===============================================================================
#
#         FILE: zonaras.pl
#
#        USAGE: ./zonaras.pl <input_file>
#
#  DESCRIPTION: Converts utf-8 the Zonaras lexicon from TLG to dsl format
#
#       AUTHOR: proteus (), proteus@sdf.org
#      VERSION: 1.0
#      CREATED: 02/26/2022
#===============================================================================

use strict;
use warnings;
use utf8;
use File::Slurp::Unicode;
binmode STDOUT, ":utf8";

my $tmp = "z_temp";
my $lex_text = shift @ARGV;
open ( IN, "<$lex_text") or die $!;
open ( OUT, ">$tmp") or die $!;
while ( <IN> )
{
  next unless $. > 6;
  chomp;
  # s/\s+$//;
  s/\]|\[//g;
  s/\x{2020}//g;
  next if /^{\(?/;
  next if /\)}$/;
  print ( OUT $_, "\n");
}
close OUT;
close IN;
# my $lex = read_file( $tmp, encoding => 'utf8' );
my $lex = read_file( $tmp );
my @lemas = split( /<(.*?)>\.?/, $lex);
shift @lemas;
my $last = $#lemas;
# print "$last\n";

for (my $l = 0; $l < $last; $l += 2){
  my $head = lc($lemas[$l]);
  my $body = $lemas[$l+1];
  $body =~ s/\n?\s+/ /gs;
  $body =~ s/\- //g;
  $body =~ s/\x{2329}/[b]/gs;
  $body =~ s/\x{232a}/[\/b]/gs;
  print "$head\n";
  print "\t[m1]$body [/m]\n";
}
unlink $tmp;
