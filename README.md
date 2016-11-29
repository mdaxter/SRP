Secure Remote Password (SRP) for Swift
======================================

SRP6 for Swift. API designed similar to the Python package [https://pypi.python.org/pypi/srp](srp). For usage, either see the Python package, or the tests.

## Prerequisites

This package uses [BignumGMP](https://github.com/mdaxter/BignumGMP), which, in turn uses [libgmp](https://gmplib.org/).
Therefore, prior to compiling, you need to have a copy of [libgmp](https://gmplib.org/) installed for your operating system.

### Linux

For [apt](https://wiki.debian.org/Apt)-based Linux distributions (such as [Debian](https://www.debian.org) or [Ubuntu](https://www.ubuntu.com)), you need to install the `libgmp-dev` package first:

	sudo apt install libgmp-dev

### macOS

Install `gmp` via [Homebrew](http://brew.sh/):

	brew install gmp

## Compiling and Testing

This library uses the [Swift Package Manager](https://swift.org/package-manager/).  To build and test use:

	swift build  -Xcc -I/usr/local/include -Xlinker -L/usr/local/lib
	swift test   -Xcc -I/usr/local/include -Xlinker -L/usr/local/lib

## Limitations

At the moment, only a small number of `BigInt` operations corresponding to the [libgmp](https://gmplib.org/) `mpz` type are implemented. 