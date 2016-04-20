muttrcbuilder version 0.5
=========================

This is the code used to run <http://www.muttrcbuilder.org/>. It provides an
easy way to create `muttrc` files for the mutt email client
(<http://www.mutt.org/>).

Run `script/mutt_config_builder_server.pl` to test the application.

The builder uses a series of modules under `Mutt::Config` to load information
on configuration variables supported by different versions of mutt - actual
information is under `Mutt::Config::Version`.

There is a program to take a mutt `manual.xml` and `manual.txt` and turn it
into a `Mutt::Config::Version` module, in
`script/mutt_config_write_module.pl`.

INSTALLATION
------------

To install this module type the following:

    perl Makefile.PL
    make
    make install
    cp script/mutt_config_builder_cgi.pl /var/www/cgi-bin/

DEPENDENCIES
------------

These programs require perl v5.8.0 or greater.

The builder requires:

* `Catalyst
* `Catalyst::Action::RenderView`
* `Catalyst::Devel`
* `Catalyst::Plugin::ConfigLoader`
* `Catalyst::Plugin::Session`
* `Catalyst::Plugin::Session::State::Cookie`
* `Catalyst::Plugin::Session::Store::FastMmap`
* `Catalyst::Plugin::Unicode::Encoding`
* `Catalyst::View::Mason`
* `Module::Pluggable`

The `mutt_config_write_module` script requires:

* `XML::LibXML`
* `XML::LibXSLT`
* The `lynx` web browser in your path

COPYRIGHT AND LICENCE
---------------------

Copyright (C) 2005-2016 by Luke Ross

The included mutt documentation is extracted directly from the mutt
distributions and is:

    Copyright (C) 1996-2014 Michael R. Elkins <me@cs.hmc.edu>
    Copyright (C) 1996-2002 Brandon Long <blong@fiction.net>
    Copyright (C) 1997-2009 Thomas Roessler <roessler@does-not-exist.org>
    Copyright (C) 1998-2005 Werner Koch <wk@isil.d.shuttle.de>
    Copyright (C) 1999-2014 Brendan Cully <brendan@kublai.com>
    Copyright (C) 1999-2002 Tommi Komulainen <Tommi.Komulainen@iki.fi>
    Copyright (C) 2000-2004 Edmund Grimley Evans <edmundo@rano.org>
    Copyright (C) 2006-2009 Rocco Rutte <pdmef@gmx.net>
    Copyright (C) 2014-2015 Kevin J. McCarthy <kevin@8t8.us>

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111, USA.
