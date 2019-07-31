#!/usr/bin/env perl

use strict;
use warnings;
use v5.10;

sub table_line {
    my ($conan_pkg_name, $coin_version, $repology_pkg_name) = @_;
    $repology_pkg_name //= $conan_pkg_name;
    say join " | ",
        # GitHub repo link
        "[$conan_pkg_name](https://github.com/qtwebkit/conan-$conan_pkg_name)",
        # Coin
        $coin_version,
        # Bintray badge
        "[![Bintray](https://api.bintray.com/packages/qtproject/conan/$conan_pkg_name%3Aqtproject/images/download.svg) ](https://bintray.com/qtproject/conan/$conan_pkg_name%3Aqtproject/_latestVersion)",
        # Repology badge
        "[![Repology](https://repology.org/badge/latest-versions/$repology_pkg_name.svg)](https://repology.org/project/$repology_pkg_name/versions)";
}

say "Package | Coin version | Bintray version | Latest version";
say "------- | ------------ | --------------- | --------------";

table_line "icu", "64.2";
table_line "libxml2", "2.9.9";
table_line "libxslt", "1.1.33";
table_line "libjpeg-turbo", "2.0.2";
table_line "zlib", "1.2.11";
table_line "libgpg-error", "-";
table_line "libgcrypt", "-";
