# Rebar Templates

## How to use templates

To make the templates available, you need to clone the repo to your
`~/.config/.rebar3/templates` directory:

    mkdir -p ~/.config/.rebar3/templates
    git clone <this_repo_url> ~/.config/.rebar3/templates
    
## Creating Erlang/OTP service layout

If you want to create a new directory layout for your new service you can do the following:

    $ mkdir <service_name>
    $ cd <service_name>
    $ rebar3 new service name=<service_name> description="Describe your service here."
    $ ./run.me.first.sh

Note: You need `rebar3` installed in your system, or placed in `<service_name>` directory.

This will generate the initial framework of an Erlang service that supports
Erlang/OTP releases.

Now you can run your new service:

    $ make run

Requirements: erlang, git, rebar3
