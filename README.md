# Karte von Morgen

![Screenshot](https://raw.githubusercontent.com/flosse/kartevonmorgen/master/screenshot.png)

## Mapping for Good

von morgen supports kindness, sustainability and joint action.
Everything that brings a little happiness to our world.
We believe that living in a de‐stressed, environmental‐friendly and
trust‐worthy society, is already in progress.
We want to support people in finding ways to embrace those values.

The Map von morgen is a website and app, that allows users to share their
favorite places in the world. Places that are forward‐thinking and inspiring.
The goal is to collect projects, companies and events that make a world of
tomorrow, already experienceable today.

Demo: [kvm.markus-kohlhase.de](http://kvm.markus-kohlhase.de)

## Development

[![Build Status](https://secure.travis-ci.org/flosse/kartevonmorgen.svg?branch=master)](http://travis-ci.org/flosse/kartevonmorgen)
[![Dependency Status](https://gemnasium.com/flosse/kartevonmorgen.svg)](https://gemnasium.com/flosse/kartevonmorgen)

Are you're interested in contributing to KVM?
The following is a description of a quickstart.
If you're looking for a more comprehensive introduction,
have a look at [CONTRIBUTING.md](CONTRIBUTING.md).

### Dependencies

To be able to start development you'll need the following tools:

- [git](>https://www.git-scm.com/)
- [Node.js](https://nodejs.org/) version >= 0.10.40
- [npm](https://www.npmjs.com/package/npm)

Now clone this repository:

    git clone https://github.com/flosse/kartevonmorgen

Go to the root of it and install all the dependencies:

    cd kartevonmorgen/
    npm install

### Build

To build the web application run:

    npm run pack

The result can be found in `dist/`.
During the development you don't want to do that manually on every file change,
so just run

    npm start

and open the app in your browser `http://localhost:8080`.
Now on every file change, the app will be build
for you and the browser reloads automatically.

### Tests

All the tests can be found in the `spec/` folder.
To run the tests type

    npm t

### Nix

If you're using [Nix](http://nixos.org/nix/) or [NixOS](http://nixos.org/) you
can get your complete development environment by just typing

    nix-shell dev-env.nix

### Backend

The backend lives in a separate repository.
You'll find here the link to the source code
as soon as I finished an initial draft.

## License

Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

This project is licensed under the [AGPLv3 license](http://www.gnu.org/licenses/agpl-3.0.txt).
