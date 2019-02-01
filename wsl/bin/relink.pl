#!/usr/bin/env perl

$symlink = $ARGV[0];
unless (-l $symlink) {
  print STDERR "That's not a symlink!\n";
  exit 1;
}
print 'Currently points at "';
print readlink $symlink;
print "\"\n";
print "Where should it point?\n";
$location = <STDIN>;
`ln -s $location $symlink.temp`;
`mv -T $symlink.temp $symlink`;
