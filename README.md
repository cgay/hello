# hello

This Dylan Hello World example demonstrates a Dylan application, its implementation
library, an accompanying test suite, and workflows to build and test it.  The workflows
are in the `.github/workflows` subdirectory.

## How to build and test

After cloning the repository, simply run `dylan update` to install required packages, run
`dylan build -a` to build all workspace libraries, and then run the application and the
test suite with:

```console
$ _build/bin/hello-app
$ _build/bin/hello-test-suite
```

## The dylan-lang/install-opendylan GitHub Action

The [`install-opendylan`](https://github.com/dylan-lang/install-opendylan) action
installs the latest release of the Open Dylan compiler and the `dylan` command-line tool.

See
[build-and-test.yml](https://github.com/cgay/hello/blob/main/.github/workflows/build-and-test.yml)
for an example workflow that runs the tests for this repository.
