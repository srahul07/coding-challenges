mealCost = input()
tipPercent = input()
taxPercent = input()

tip = mealCost * tipPercent / 100
tax = mealCost * taxPercent / 100
totalCost = mealCost + tip + tax
print("The total meal cost is {} dollars.".format(round(totalCost, 0)))
