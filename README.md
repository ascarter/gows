# Go workspace manager

`gows` is a shell extension for managing Go workspaces. `gows` allows switching to different workspaces managed independently. It will support multiple workspaces.

## Install

Clone `gows`:

    git clone https://github.com/ascarter/gows.git ~/.gows
    
Add the following to shell init script (`.zshenv` or `.bashrc`):

    # Go
    if [ -d /usr/local/go ]; then
        export GOROOT=/usr/local/go
    fi

    if [ -d ~/.gows ]; then
        source ~/.gows/gows
    fi

Launch a new shell session and create a new project workspace

    gows init ~/Projects/mygows

## Configuration

`gows` requires Go to be installed and properly configured.

Additionally, `gows init` can install default list of packages. To configure the list of packages, a list of package paths can appear in the following locations:

    /usr/etc/goenvrc
    /usr/local/etc/goenvrc
    ~/.goenvrc
    .goenvrc

This is a convenience to ensure that a set of packages can be made available whenever creating a new workspace.

## Usage:
    gows command [arguments]

    The commands are:
        add        add path to front of workspace GOPATH (default current)
        cd         switch to directory of package path (default $GOPATH/src)
        edit       open package path in VISUAL editor (default $GOPATH/src)
        init       initialize workspace (default working directory)
        install    install default Go packages
        list       list all workspace paths
        reset      reset to empty workspace
        run        detects go path and runs command in that environment
        switch     switch workspace to path (default to working directory)
        which      show current Go workspace

    gows manages the workspace by setting the GOPATH environment variable
    When setting or adding a workspace, gows will search up the path
    to find the parent with the required GOPATH entries of bin, pkg, and src
    Workspaces are added to the front of an existing GOPATH.

    gows init will install all packages listed in the following:
        /usr/etc/goenvrc
        /usr/local/etc/goenvrc
        ~/.goenvrc
        .goenvrc
