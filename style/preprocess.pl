#!/usr/bin/env perl
# Pandoc markdown preprocessor for resume PDF generation.
#
# 1. Insert blank lines before list items that follow non-list, non-blank lines.
#    Standard Pandoc markdown requires a blank line before a list start; the README
#    omits these after **bold header:** lines.
#
# 2. Normalize table separator rows so no column gets fewer than 10 dashes.
#    Pandoc calculates proportional column widths from separator dash counts.
#    Tables with |-| separators produce unusably narrow columns.

use strict;
use warnings;

my $prev = "";
while (<>) {
    # --- Fix 1: Insert blank line before list items after non-list lines ---
    if (/^[-*] /) {
        my $prev_is_list = ($prev =~ /^- / || ($prev =~ /^\* / && $prev !~ /^\*\*/) || $prev =~ /^ /);
        my $prev_is_blank = ($prev =~ /^$/);
        if (!$prev_is_list && !$prev_is_blank) {
            print "\n";
        }
    }

    # --- Fix 2: Normalize table separator widths ---
    # Match lines that look like table separators: |---|---|...|
    if (/^\|[\s:|-]+\|$/) {
        my $min_dashes = 10;
        s{(?<=\|)(\s*:?)-+(:?\s*)(?=\|)}{
            my ($pre, $post) = ($1, $2);
            my $need = $min_dashes;
            $pre . ('-' x $need) . $post
        }ge;
    }

    print;
    chomp;
    $prev = $_;
}
