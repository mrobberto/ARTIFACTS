Python Code Style Guide for `target-coverage-tool`
==================================================

This document serves as a style guide for all `target-coverage-tool` (tct) software development.  Any requested contribution to the `tct` code repository should be checked against this guide, and any violation of the guide should be fixed before the code is committed to
the `main` branch.  Please refer to the accompanying [`example.py`](https://github.com/spacetelescope/mirage/blob/master/style_guide/example.py) script for a example code that abides by this style guide.

Prerequisite Reading
--------------------

It is assumed that the reader of this style guide has read and is familiar with the following:

- The [PEP8 Style Guide for Python Code](https://www.python.org/dev/peps/pep-0008/)
- The [PEP257 Docstring Conventions Style Guide](https://www.python.org/dev/peps/pep-0257/)
- The [`numpydoc` docstring convention](https://github.com/numpy/numpy/blob/master/doc/HOWTO_DOCUMENT.rst.txt)


Workflow
--------

All software development for the `tct` project should follow a continuous integration workflow.  Before committing any code changes, use `flake8` to check the code against `PEP8` standards.  Also check that your code is conforming to this style guide.


Security
--------

The following items should never be committed in the `tct` source code or GitHub issues/pull requests:

- Account credentials of any kind (e.g. database usernames and passwords)
- Internal directory structures or filepaths
- Machine names
- Proprietary data


`tct`-specific Code Standards
-----------------------------

`tct` code shall adhere to the `PEP8` conventions save for the following exceptions:

 - Lines of code need not to be restricted to 79 characters.  However, it is encouraged to break up obnoxiously long lines into several lines if it benefits the overall readability of the code

 Additionally, the code shall adhere to the following special guidelines:

 - Function and class definitions should be placed in alphabetical order in the module
 - It is encouraged to annotate variables and functions using the [`typing`](https://docs.python.org/3/library/typing.html) module (see [PEP 483](https://www.python.org/dev/peps/pep-0483/), [PEP 484](https://www.python.org/dev/peps/pep-0484/), and [PEP 526](https://www.python.org/dev/peps/pep-0526/)).


`tct`-Specific Documentation Standards
--------------------------------------

`tct` code shall adhere to the `PEP257` and `numpydoc` conventions.  The following are further recommendations:

- Each module should have at minimum a description, `Authors` and `Use` section.
- Each function/method should have at minimum a description, `Parameters` (if necessary), and `Returns` (if necessary) sections

Acknowledgements
----------------

This style guide as well as [`example.py`](https://github.com/spacetelescope/mirage/blob/master/style_guide/example.py) were adapted from those used by the [`jwql` project](https://github.com/spacetelescope/jwql).