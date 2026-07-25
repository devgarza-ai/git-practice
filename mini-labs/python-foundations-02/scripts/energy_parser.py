# Safe Integer Conversion Practice
# Python Foundations Bridge 02

while True:
    energy_text = input("Enter energy level (1-5): ")

    try:
        energy_level = int(energy_text)
    except ValueError:
        print("Invalid input: enter a whole number from 1 through 5.")
        continue

    if 1 <= energy_level <= 5:
        print(f"Accepted number: {energy_level}")
        break

    print("Invalid range: enter a number from 1 through 5.")
