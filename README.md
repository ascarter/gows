# Go workspace manager

`gows` is a set of shell extensions for managing Go workspaces. The recommend layout is to have a default workspace and at least one other development workspace. The default workspace is a useful location to install any external common go packages. The second workspace is a good choice for any of your own projects. `gows` helps you manage the two together.

## Install

Create a Default workspace:

    mkdir ~/.go

Clone `gows`:

    git clone https://github.com/ascarter/gows.git ~/.gows
    
Add the following to shell init script (`.zshenv` or `.bashrc`):

    # Go
    if [ -d /usr/local/go ]; then
        export GOROOT=/usr/local/go
    fi

    if [ -d ~/.go ]; then
        export GOPATH=~/.go
        export PATH=$PATH:$GOROOT/bin:${GOPATH//://bin:}/bin
    fi

    if [ -d ~/.gows ]; then
        source ~/.gows/gows
    fi

Launch a new shell session and create a new project workspace

    gows init ~/Projects/mygows

## Vendoring

`gows` has support for vendoring dependencies. To initialize a vendor directory:

    cd $PATH_TO_APP
    gows vendor

This will create a new workspace named `_vendor` in the current directory. The `_vendor` workspace will automatically get added when using `gows cd` to your project. The `_vendor` workspace is put first on the `$GOPATH` so you can install all dependencies using the following command:

    go get ./...

This will pull all your current dependencies into `_vendor`. The environment variable `$GOBIN` is set to keep any built items in your current workspace `bin` directory.

## Usage:

    gows command [arguments]

    The commands are:
        add        add path to front of workspace GOPATH (default current)
        cd         switch to directory of package path (default $GOPATH/src)
        edit       open package path in VISUAL editor (default $GOPATH/src)
        env        environment variables for workspace
        get        download and install package to current workspace
        init       initialize path as workspace (default working directory)
        list       list all workspace paths
        reset      reset to empty workspace
        run        detects go path and runs command in that environment
        switch     switch workspace to path (default to working directory)
        vendor     create _vendor workspace (default in working directory)
        which      show current Go workspace

    gows manages the workspace by setting the GOPATH environment variable
    When setting or adding a workspace, gows will search up the path
    to find the parent with the required GOPATH entries of bin, pkg, and src
    Workspaces are added to the front of the GOPATH.

