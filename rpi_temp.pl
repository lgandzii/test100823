#!/usr/bin/perl
#
#use strict;
#use warnings;

delete @ENV{qw(PATH)};
$ENV{PATH} = "/usr/bin:/bin";
my $path = $ENV{'PATH'};
 
# open(PROCESS, "/opt/vc/bin/vcgencmd measure_temp |");


open(PROCESS, "/usr/bin/vcgencmd measure_temp |");



$avg = <PROCESS>;
 close(PROCESS);
  
 $avg =~ s/^.*=(\d{2}\.\d)'?C?$//;
  
  print "$1";
