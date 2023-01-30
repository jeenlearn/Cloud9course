ln = ['Dog', 'Cat', 'Elephant', 'Fly', 'Horse']
short_names = []

for animal in ln:
	if animal != 'Elephant':
		short_names.append(animal)

print(short_names)