# config
System and user configuration files.

# Usage:

The directory structure containing the files to be installed reflects
the target directory structure.

Installation is done by changing directories to the top-level directory
containing all the files to be installed and running make.

Files with a .diff or .script extension are not installed but passed to diff or sh.

# Installation

The default make target **all** does nothing. A correct **DESTDIR** and target must be
passed to make.

Valid targets include:

**install-all**  
Create target directory structure, install files, patch, and run scripts

**install-dirs**  
Only create the target directory structure

**install-diffs**  
Patch files

**run-scripts**  
Run scripts (files with a .script extension)

# Other Options

Passing an empty **ARGS** variable to make on the command line or by editing
the Makefile will prevent a prompt from occuring before installing or
running each file or command.


# Example:

Run all targets

	cd user/common
	make -f ../../Makefile DESTDIR=$HOME install-all
