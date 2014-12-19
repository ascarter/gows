Go workspace manager

Usage:
    gows command [arguments]

The commands are:
    add        add path to workspace (default working directory)
    cd         switch to directory of package path (default $GOPATH/src)
    edit       open package path in VISUAL editor (default $GOPATH/src)
    env        environment variables for workspace
    init       initialize path as workspace (default working directory)
    list       list all workspace paths
    reset      reset to empty workspace
    rm         remove path from workspace (default working directory)
    run        detects go path and runs command in that environment
    switch     switch workspace to path (default to working directory)
    which      show current Go workspace

gows manages the workspace by setting the GOPATH environment variable
When setting or adding a workspace, gows will search up the path
to find the parent with the required GOPATH entries of bin, pkg, and src