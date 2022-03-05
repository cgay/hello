# hello

This Dylan Hello World example is primarily intended to demonstrate the various
Dylan GitHub workflows. They are in the `.github/workflows` subdirectory. There
are two workflows, one using the traditional method (see below) and one using
[`dylan-tool`](https://github.com/dylan-lang/dylan-tool) and the package
manager.

## The dylan-lang/install-opendylan GitHub Action

The [`install-opendylan`](https://github.com/dylan-lang/install-opendylan)
Action installs the latest release of the Open Dylan compiler. When complete
there are two artifacts in the current directory:

1.  The `dylan-compiler` executable.
2.  An `opendylan` symbolic link to the Open Dylan root directory. For example,
    `opendylan` → `opendylan-2020.1`.

To build your project run `./dylan-compiler -build hello-test-suite`. The
compiler looks for any library dependencies in the "registry", so for example
if `hello-test-suite` depends on `hello`, you must add a `registry` directory
with an entry for `hello`. See the example `registry` directory in this
repository.  Similarly, you should add other dependencies as git submodules and
add registry files for them as well.

See also:

*  The [build-and-test.yml](.github/workflows/build-and-test.yml) workflow.
*  [`install-opendylan`](https://github.com/dylan-lang/install-opendylan) for
   more documentation.

## The dylan-lang/install-dylan-tool GitHub Action

This Action first installs
[`opendylan`](https://github.com/dylan-lang/opendylan) by invoking the
`install-opendylan` Action above and then it builds
[`dylan-tool`](https://github.com/dylan-lang/dylan-tool) and puts a link to the
`dylan` executable in the current directory.

Briefly, `dylan-tool` uses the [`pkg.json`](pkg.json) file to find dependencies
(and their dependencies), downloads them from GitHub, and scans them to create
the `registry` directory for you. Then you can invoke `dylan-compiler` as
normal. (In the future, `dylan-tool` will build and run the tests for you.)

See also:

*  The [build-and-test-pkg.yml](.github/workflows/build-and-test-pkg.yml)
   workflow.
*  [`install-dylan-tool`](https://github.com/dylan-lang/install-dylan-tool) for
   more documentation.
