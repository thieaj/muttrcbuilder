#!/usr/bin/env perl
# IMPORTANT: if you delete this file your app will not work as
# expected.  You have been warned.
use inc::Module::Install;
use Module::Install::Catalyst; # Complain loudly if you don't have
                               # Catalyst::Devel installed or haven't said
                               # 'make dist' to create a standalone tarball.

name 'Mutt-Config-Builder';
all_from 'lib/Mutt/Config/Builder.pm';

requires 'Config::General';
requires 'Catalyst::Runtime' => '5.70';
requires 'Catalyst::Action::RenderView';
requires 'Catalyst::Plugin::ConfigLoader';
requires 'Catalyst::Plugin::Session';
requires 'Catalyst::Plugin::Session::State::Cookie';
requires 'Catalyst::Plugin::Session::Store::FastMmap';
requires 'Catalyst::Plugin::Static::Simple';
requires 'Catalyst::Plugin::Unicode::Encoding'; # Can use Catalyst::Plugin::Unicode
                                                # on older versions of Catalyst:w
requires 'Catalyst::View::Mason';
requires 'Module::Pluggable';
requires 'XML::LibXML';
requires 'XML::LibXSLT';
test_requires 'Test::More' => '0.88';
catalyst;

install_script glob('script/*.pl');
auto_install;
WriteAll;
