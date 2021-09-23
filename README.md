# CHIME analysis tutorial

This repo contains a collection of notebooks and scripts intended to go over some of the
basics of CHIME data analysis and pipeline development.

## Setting up a CHIME environment

Whether you are running this on cedar, or on your own laptop you'll need to setup a
Python environment with the CHIME pipeline code.

First you'll need a base Python environment. On `cedar` this can be done by loading the
CHIME python modules using
```bash
module use /project/rpp-chime/chime/chime_env/modules/modulefiles/
module load chime/python/2021.03
```
either on the command line or in your `.bashrc` (or `.zshrc`). On another machine you're
on your own, but you can either do this via your system package manager (`apt`,
`homebrew` etc.), or via a distribution like [Anaconda](https://www.anaconda.com/) or
[Miniforge](https://github.com/conda-forge/miniforge/).

With a working Python installation you'll need to install the CHIME packages. We
strongly recommend that you use a *virtualenv* to do this, so much so that we have
written a script to automate this for you. Simply run
```bash
$ ./mkchimeenv.sh <install dir>
```
and it will create a virtual environment in `<install dir>/venv/` and install all CHIME
packages into it as editable git repositories (available at `<install dir>/code/`). To
activate this environment simply activate it as usual `source <install
dir>/venv/bin/activate`.

The final and optional step is to install a *kernel* such that you can run this virtual
environment in Jupyter. To do this activate your virtual environment as described above
and then run `python -m ipykernel install --user --name <env name>`, where `<env name>`
is a name of your choice that you will use to refer to it.


## Sample Data

Some of the tutorials require sample data. This is all available from the [CHIME
website](https://bao.chimenet.ca/analysis_tutorial/).


## Tutorials

- `ringmaps/`: how to load and interpret a ringmap.



