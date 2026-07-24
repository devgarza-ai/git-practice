# Python Foundations 01

## Overview

This mini lab documents my first guided Python foundations lesson and supporting LabEx practice.

I learned how to distinguish the Linux shell from the Python interpreter, create and run saved Python scripts, store information in variables, inspect data types, receive user input, format output, and make decisions using conditional logic.

## Environment

- WSL Ubuntu
- Python 3.14.4 in WSL
- Python executable: `/usr/bin/python3`
- LabEx Python 3.10.12
- Git and GitHub for version control

## Concepts Practiced

- Starting and exiting the Python interpreter
- Running `.py` files with `python3`
- Variables and assignment
- Strings, integers, floats, and Booleans
- Literal strings versus variable references
- `print()` output
- F-strings and `{}` placeholders
- Inspecting values with `type()`
- Receiving user input with `input()`
- Converting numeric strings with `int()`
- Equality and numerical comparisons
- `if`, `elif`, and `else`
- Logical `or`
- Python indentation
- Numeric range validation

## Scripts

### `cloud_profile.py`

Creates a basic cloud-engineering study profile using:

- String variables
- Integer and float variables
- A Boolean value
- F-string formatting
- Data-type inspection

Run it with:

```bash
python3 scripts/cloud_profile.py
```

### `session_checkin.py`

Creates an interactive study-session check-in.

The program:

1. Requests the student's name and study topic.
2. Requests an energy level.
3. Converts the energy response from a string into an integer.
4. Displays a formatted check-in summary.
5. Recommends a study intensity using conditional logic.
6. Rejects numerical energy levels outside the 1–5 range.
7. Displays the data type of each stored value.

Run it with:

```bash
python3 scripts/session_checkin.py
```

## Conditional Logic

The session recommendation uses an ordered decision chain:

- Values below `1` or above `5` are invalid.
- Values from `4` through `5` receive a focused recommendation.
- Values from `2` through `3` receive a moderate recommendation.
- A value of `1` receives a light-review recommendation.

The invalid-range condition must appear first because a number such as `7` would also satisfy `energy_level >= 4`. Python executes only the first true branch in an `if`/`elif`/`else` chain.

## Errors Encountered and Repaired

### `SyntaxError`

A quotation mark was left unclosed. Python reported an unterminated string literal.

### `NameError`

A variable name was misspelled. Python could not locate a variable matching the misspelled identifier.

### `ValueError`

The string `"five"` could not be converted into an integer with `int()`.

### `IndentationError`

An instruction underneath an `if` statement was not initially indented. Python requires indentation to define the instructions belonging to a condition.

## LabEx Reinforcement

I completed the LabEx **Your First Python Lab**.

The lab reinforced:

- Launching the Python interpreter
- Arithmetic expressions
- Variables and reassignment
- `print()`
- `input()`
- Integer conversion
- Properly exiting the interpreter

## Key Takeaway

Python distinguishes carefully between text, numbers, Boolean values, and variable names. Input begins as text, so programs must convert it before performing numerical operations. Conditional logic then allows the program to make decisions based on those converted values.

My next step is learning how to handle invalid text input safely using `try` and `except`.
