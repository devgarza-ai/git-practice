# Python Foundations Bridge 02

## Objective

Upgrade a Python study-session check-in program so incorrect user input does not crash the application.

## Concepts Practiced

- `try` and `except ValueError`
- Safe string-to-integer conversion
- `while True` loops
- `continue`
- `break`
- Numeric range validation
- Chained comparisons
- Python indentation
- Syntax checking with `py_compile`
- Capturing program output with `tee`

## Conversion and Validation

The `input()` function always returns a string. Even when the user enters `5`, Python initially receives `"5"`.

The following conversion changes that string into an integer:

```python
energy_level = int(energy_text)
```

If the user enters nonnumeric text such as `five`, `int()` raises a `ValueError`.

## Exception Handling

I handled conversion failures with:

```python
try:
    energy_level = int(energy_text)
except ValueError:
    print("Invalid input: enter a whole number from 1 through 5.")
    continue
```

The `try` block contains the operation that could fail. If a `ValueError` occurs, Python enters the `except` block instead of terminating the program.

The `continue` statement returns execution to the beginning of the loop so the user can try again.

## Range Validation

A successful integer conversion does not guarantee that the number is within the permitted range.

I validated the range using:

```python
if 1 <= energy_level <= 5:
    break
```

This condition means that `energy_level` must be at least `1` and at most `5`.

If the number is valid, `break` terminates the input loop. Otherwise, the program displays an invalid-range message and repeats the loop.

## Final Safe-Input Logic

```python
while True:
    energy_text = input("Enter your energy level (1-5): ")

    try:
        energy_level = int(energy_text)
    except ValueError:
        print("Invalid input: enter a whole number from 1 through 5.")
        continue

    if 1 <= energy_level <= 5:
        break

    print("Invalid range: enter a number from 1 through 5.")
```

## Testing Performed

I tested three inputs during one execution:

- `five` produced a conversion message and restarted the loop.
- `8` converted successfully but failed range validation.
- `5` passed conversion and range validation.

After accepting `5`, the program continued and recommended a focused study session.

## Errors Investigated

### ValueError

Occurred when `int()` attempted to convert nonnumeric text such as `five`.

### SyntaxError: continue not properly in loop

Occurred because indentation accidentally placed `continue` outside the `while` loop. Correcting the indentation placed `try`, `except`, `continue`, `if`, and `break` inside the loop.

### EOFError

Occurred during an automated pipeline test because the supplied input ended before the loop received a valid energy level. This was different from `ValueError`: the program requested input, but no more input existed.

## Verification Commands

```bash
python3 -m py_compile scripts/energy_parser.py
python3 -m py_compile scripts/session_checkin.py
python3 scripts/session_checkin.py
python3 scripts/session_checkin.py | tee reports/session-checkin-safe-input.txt
cat reports/session-checkin-safe-input.txt
```

No output from `py_compile` indicated that the scripts passed their syntax checks.

## Cloud Engineering Relevance

Cloud automation must handle unexpected input safely. A script should validate information, report understandable errors, and recover when possible instead of crashing immediately.

This lesson introduced defensive programming habits that will later apply to configuration tools, command-line utilities, cloud automation, API input, and deployment scripts.

## Final Result

I upgraded my interactive Python session check-in so it:

- Accepts user input
- Converts numeric text into an integer
- Handles nonnumeric input without crashing
- Rejects numbers outside the permitted range
- Repeats until valid input is received
- Produces the correct study recommendation

Python Foundations Bridge 02 was completed successfully.
