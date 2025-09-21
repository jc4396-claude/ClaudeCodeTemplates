# High level instructions

- When asked to perform a task, find the matching .md file describing the task to performed for more information. If no such file exist, do the tast as described in the prompt.
- Write python3 language to solve tasks, using well known packages such as numpy, matplotlib, scipy, polars, scipy, keras, sympy, dataclasses, xarray, loguru, pytest, click, etc.
- For each new task, generate a runnable .py file and run it to generate what is asked.
- Produce high quality, safe, fast code.
- Use only English as a language.
- Do not write credentials and other secrets on disk or in script and do not leak secrets.
- Use test driven development: first write reasonable tests, then write the code, then check that the tests pass.
- Use tests, both unit tests for each function, and integration tests for high level functionality.

# Package choices

Whenever possible, prefer using:
  - `polars` over `pandas`
  - `xarray` over `netCDF4`
  - use `cartopy` over `basemap`
  - use `pathlib` over lower level alternatives
  - use `loguru` for *program and logics and debug logging* over plain `print()`; do not use loguru, but use some print or pretty print, when showing data that the user asks for (for example, plotting a list of options as per user request).
  - use `pytest` for testing
  - use `click` for generating cli
  - use `dataclasses` for structured data

# Methodology choices

- When solving a problem for which there is an exact solution, such as simple equations, a problem wich may have an exact solution as provided by a script or a computer algebra system, write and run a python script using sympy or whatever other relevant tool to get the exact solution.

# Run python3 commands in dev conda env

- Run commands in the 'dev' conda environment. This can be activated by using `source ~/miniconda3/bin/activate && conda activate dev` .
- Install new packages inside the environment when needed with `conda install` or `pip install` . Do not install anything outside of the conda env 'dev'.

# Check code quality

- Follow the `setup.cfg` options.
- Follow the zen of python.
- If relevant, include unit testing for each new function or functionality.
- Use consistent python naming conventions.
- Remove unused code.
- Use libraries and packages rather than re-implementing simple stuff.
- Use relevant data structures, classes, and data classes, in particular dataclasses.
- Use typing when relevant.
- Always sanitize inputs and outputs.
- Check the quality of the python code with the following tools from the dev env:
  - ty: `ty check FILE.py` ,
  - ruff: `ruff check FILE.py` ,
  - pylint: `pylint FILE.py` .
  - run all tests using pytest .

# Check for typos

- Check the spelling using `cspell link FILE.py` . Consider yourself what spellchecks can be reasonably ignored if necessary.

# Continuous refactor

- Write code that is pythonic and simple.
- Take a refactoring iteration before running the code.

# Other practical guidelines

- When peaking into data files, for example a CSV or XLS or similar, do not look at the full file, as this may fill your context too fast. Instead, use the `head -10` command or similar to just look at the few first lines to understand how the file works 
- Think about where it is best to save the scripts you work on. For example, if there is a folder containing specific files to work on, put the script in the corresponding folder. But if the folder has a very specific name like "data", consider putting the script in the parent folder. Think a bit about what makes most sense so that scripts are in good locations.
- When committing into git, add files individually and make sure to add only the files corresponding to the work done in the present discussion thread - there may be more claude agents working in parallel in different threads, dont add their code instead of them.
- Before and after doing a task, think a bit about what you are asked to do - if it does not make sense, or you think what is asked is flawed, or you think something better could be done, let the user know and suggest alternatives and ask what the user wants to do before actually doing something.
- When writing a .gitignore, only write the necessary entries that are relevant for the present directory and project. For example, no need to have a .gitignore that is hundreds of lines and excludes all kinds of C++ files when working on a small python project. But do remember to ignore also . files and folders, such as for example .ruff_cache and similar
