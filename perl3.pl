#!/usr/bin/perl
@array = qw( pebbles dino fred barney betty );
@removed = splice @array, 1, 2, qw(wilma);
@removed = splice @array, 1, 0, qw(wilma);
print (@array);
print "\n";
