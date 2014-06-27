goenv
=====

Go workspace manager

Usage:

	goenv command [arguments]

The commands are:

	init     initialize path as workspace (default working directory)
	set      set workspace to path (default to working directory)
	add      add path to workspace (default working directory)
	rm       remove path from workspace (default working directory)
	reset    reset to workspace to empty
	list     list all workspace paths
	which    show current Go workspace

goenv manages the workspace by setting the GOPATH environment variable. When setting or adding a workspace, goenv will search up the path to find the parent with the required GOPATH entries of bin, pkg, and src.

