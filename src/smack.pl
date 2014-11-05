#!/usr/bin/perl -w

# Smackbook for Yosemite Spaces
# ============================
# Updated for OS X Yosemite by Steven Bock
# stevenbockster@gmail.com
# bocksg@plu.edu
# November 4th, 2014
#
# Originally rebuilt by Jason Shen for OS X Leopard
# iamreal2@hotmail.com
# 16 Nov 2007
#
# Based on Brian Jepson's Smaxpose2.command
#   http://www.jepstone.net/blog/2006/05/25/expose-smackbook-pro-style/
# Which is
# Based on Erling Ellingsen's SmackBook Pro scripts:
#   http://blog.medallia.com/2006/05/smacbook_pro.html
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# =====================================================================

# USAGE:
#
# Save this script into a file called smackleopard.command, and make
# it executable with the Terminal command:
#
#   chmod +x smackleopard.command
#
# Then, run it from the Terminal or double-click it in the Finder.

use strict;
my $stable = 0;

# Get AMSTracker from Amit Singh's site:
# http://www.osxbook.com/software/sms/amstracker/
# and put AMSTracker in same directory as smackleopard.command
#
open F,"./AMSTracker -s -u0.01 |";
while(<F>) {
    my @a = /(-?\d+)/g;
    print, next if @a != 3;

    # we get a signed short written as two unsigned bytes
    $a[0] += 256 if $a[0] < 0;
    my $x = $a[1]*256 + $a[0];

    if(abs($x) < 20) {
	$stable++;
    }

    # you can adjust sensitivity here
    # original file uses 30. 20 is better for me.
    if(abs($x) > 15 && $stable > 15) {
	$stable = 0;

	# check if it is LEFT or RIGHT tap
	# I use ^ArrowKeys for Leopard Spaces to switch.
	if ($x < 0) {
        	`osascript -e 'tell application \"System Events\" to keystroke (ASCII character 29) using control down'`
	} else {
		`osascript -e 'tell application \"System Events\" to keystroke (ASCII character 28) using control down'`
	}
    }
}
