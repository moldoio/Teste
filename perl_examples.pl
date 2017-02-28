#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

use Data::Dumper;
{
  my %words = (
      dog   => 'chien',
      eat   => 'manger',
      clown => 'clown',
  );

  my $english_to_french = \%words;
  my %copy              = %$english_to_french;
  my $eat               = $english_to_french -> { eat };

  # while( my ($english, $french) = each %$english_to_french )
  # {
  #  print "The french word for $english is $french\n";
  # }   


  my $english_to_french_2 = $english_to_french;
  $english_to_french_2->{cat} = 'chat';

  # How does the var %words looks like ?
  print Dumper( \%words);
}


{
  my $aref1 = [ 1, 3, 7 ];
  my $aref2 = $aref1;

  $aref2 -> [0] = 9;

  print Dumper( $aref1, $aref2); # what does it prints and why
}

{
  my $aref1 = [ 1, 3, 7 ];
  my $aref2     = [ @$aref1  ];
  $aref2 -> [0] = 9;
  print Dumper( $aref1, $aref2 ); # what does it prints and why

  print $aref1, "\n", $aref2,"\n"; # what does it prints and what can you understand from that
}

{
  my @first  = ( 1..25 );
  # my @second1 = @{ [ @$first ]};  # Ce is the error here ?
  # print "@second1\n";
}
{
  my $score_for = {
    jim => 89,
    mary => 73,
    alice => 100,
    bob => 83
  };
  my @a = %$score_for{ 'jim', 'mary' }; # what happens here ?
  print @a,"\n";
}

