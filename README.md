# muttrcbuilder version 2.3

This is the code used to run <https://lukeross.github.io/MuttrcBuilder/>. It
provides an easy way to create `muttrc` files for the mutt email client
(<http://www.mutt.org/>).

**This software (and associated web site) is looking for a new maintainer.
Please email me if you would be interested in doing so.**

## Installation

To build run `npm install`, `npm run build` and `npm start`, then view
`http://localhost:5000/` in your web browser.

## Dependencies

Requires `nodejs` and `npm`, and `python` to run the test server.

The program to generate new configuration JSON requires `python` and the
module `lxml`.  It also requires a `lynx` program in the `$PATH`.

## Copyright and licence

Copyright (C) 2005-2019 by Luke Ross

The included mutt documentation is extracted directly from the mutt
distributions and is:

    Copyright (C) 1996-2016 Michael R. Elkins <me@cs.hmc.edu>
    Copyright (C) 1996-2002 Brandon Long <blong@fiction.net>
    Copyright (C) 1997-2009 Thomas Roessler <roessler@does-not-exist.org>
    Copyright (C) 1998-2005 Werner Koch <wk@isil.d.shuttle.de>
    Copyright (C) 1999-2017 Brendan Cully <brendan@kublai.com>
    Copyright (C) 1999-2002 Tommi Komulainen <Tommi.Komulainen@iki.fi>
    Copyright (C) 2000-2004 Edmund Grimley Evans <edmundo@rano.org>
    Copyright (C) 2006-2009 Rocco Rutte <pdmef@gmx.net>
    Copyright (C) 2014-2019 Kevin J. McCarthy <kevin@8t8.us>

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
