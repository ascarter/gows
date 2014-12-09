goenv
=====

Go workspace manager

Usage:

	goenv command [arguments]

The commands are:

	run       detects go path and runs command in that environment
	init      initialize path as workspace (default working directory)
	switch    switch workspace to path (default to working directory)
	add       add path to workspace (default working directory)
	rm        remove path from workspace (default working directory)
	reset     reset to empty workspace
	bootstrap install default packages (defined in .goenvrc)
	list      list all workspace paths
	which     show current Go workspace
	env       environment variables for workspace
	edit      open package path in VISUAL editor (default $GOPATH/src)
	cd        switch to directory of package path (default $GOPATH/src)

goenv manages the workspace by setting the GOPATH environment variable
When setting or adding a workspace, goenv will search up the path
to find the parent with the required GOPATH entries of bin, pkg, and src