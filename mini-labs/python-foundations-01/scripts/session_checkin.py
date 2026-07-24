# Interactive Study Session Check-In
# Python Foundations Bridge 01

student_name = input("Enter your name: ")
study_topic = input("Enter today's study topic: ")
energy_text = input("Enter your energy level (1-5): ")
hard_stop = input("Enter your hard stop or none: ")

energy_level = int(energy_text)

print()
print("Study Session Check-In")
print("----------------------")
print(f"Student: {student_name}")
print(f"Study topic: {study_topic}")
print(f"Energy level: {energy_level}/5")
print(f"Hard stops: {hard_stop}")

print()
print("Session Recommendation")
print("----------------------")

if energy_level < 1 or energy_level > 5:
    print("Invalid energy level. Enter a number from 1 through 5")
elif energy_level >= 4:
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
