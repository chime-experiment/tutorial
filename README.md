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
module load chime/python/2022.06
```
either on the command line or in your `.bashrc` (or `.zshrc`). On another machine you're
on your own, but you can either do this via your system package manager (`apt`,
`homebrew` etc.), or via a distribution like [Anaconda](https://www.anaconda.com/) or
[Miniforge](https://github.com/conda-forge/miniforge/).

With a working Python installation you'll need to have an install of the CHIME pipeline
packages. On `cedar` you can get a quick installation going by loading the
`chime/pipeline` module using
```bash
module load chime/pipeline/2022.09
```
However, if you're going to be developing you'll want your own personal copy. We
strongly recommend that you use a *virtualenv* to do this, so much so that we have
written a script to automate this for you. Simply run
```bash
$ mkchimeenv create <install dir>
```
and it will create a virtual environment in `<install dir>/venv/` and install all CHIME
packages into it as editable git repositories (available at `<install dir>/code/`). To
activate this environment simply activate it as usual `source <install dir>/venv/bin/activate`.
On `cedar` the `mkchimeenv` command is already installed, on another machine you can
install it from this [repository](https://github.com/chime-experiment/mkchimeenv).

The final and optional step is to install a *kernel* such that you can run this virtual
environment in Jupyter. To do this activate your virtual environment as described above
and then run `python -m ipykernel install --user --name <env name>`, where `<env name>`
is a name of your choice that you will use to refer to it. You may need to write a [kernel wrapper](https://docs.nersc.gov/services/jupyter/how-to-guides/#how-to-customize-a-kernel-with-a-helper-shell-script).


## Sample Data

Some of the tutorials require sample data. This is all available from the [CHIME
website](https://bao.chimenet.ca/analysis_tutorial/).


## Tutorials

- `ringmaps/`: how to load and interpret a ringmap.
- `chime_ringmaps/`: how to load and manipulate a real ringmap on cedar
- `dataset_ids/`: how to understand and interpret the dataset_ids and fetch
  the relevant states from the database.
- `baseband/`: decode kotekan baseband dumps for RFI testing.



