# Interactive Study Session Check-In
# Python Foundations Bridge 01

student_name = input("Enter your name: ")
study_topic = input("Enter today's study topic: ")

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

hard_stop = input("Enter your hard stop or none: ")

print()
print("Session Recommendation")
print("----------------------")
if energy_level >= 4:
    print("Focused study session recommended.")
elif energy_level >= 2:
    print("Moderate study session recommended.")
else:
    print("Light review or rest recommended.")

print()
print("Input Type Inspection")
print("---------------------")
print(f"student_name: {type(student_name)}")
print(f"study_topic: {type(study_topic)}")
print(f"energy_text: {type(energy_text)}")
print(f"energy_level: {type(energy_level)}")
print(f"hard_stop: {type(hard_stop)}")
