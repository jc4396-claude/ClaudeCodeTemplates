# High level instructions

- Write python3 language to solve tasks, using well known packages such as numpy, matplotlib, scipy, polars, scipy, keras, sympy, dataclasses, xarray, etc.
- For each new task, generate a runnable .py file and run it to generate what is asked.
- Produce high quality, safe, fast code.
- Use only English as a language.
- Do not write credentials and other secrets on disk or in script and do not leak secrets.

# Package choices

Whenever possible, prefer using:
  - polars over pandas
  - xarray over netCDF4

# Methodology choices

- When solving a problem for which there is an exact solution, such as simple equations, a problem wich may have an exact solution as provided by a script or a computer algebra system, write and run a python script using sympy or whatever other relevant tool to get the exact solution.

# Run python3 commands in dev conda env

- Run commands in the 'dev' conda environment. This can be activated by using `source ~/miniconda3/bin/activate && conda activate dev` .

# Check code quality

- Follow the `setup.cfg` options.
- Follow the zen of python.
- Use consistent python naming conventions.
- Remove unused code.
- Use libraries and packages rather than re-implementing simple stuff.
- Use relevant data structures, classes, and data classes, in particular dataclasses.
- Use typing when relevant.
- Check the quality of the python code with the following tools from the dev env:
  - ty: `ty check FILE.py` ,
  - ruff: `ruff check FILE.py` ,
  - pylint: `pylint FILE.py` .

# Check for typos

- Check the spelling using `cspell link FILE.py` . Consider yourself what spellchecks can be reasonably ignored if necessary.

# Continuous refactor

- Write code that is pythonic and simple.
- Take a refactoring iteration before running the code.
