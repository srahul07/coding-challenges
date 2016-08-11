N = input()
for i in range(int(N)):
    string = input()
    new_str = ""
    for n in range(len(string)):
        if n % 2 == 0:
            new_str += string[n]
    new_str += " "
    for n in range(len(string)):
        if n % 2 != 0:
            new_str += string[n]
    print(new_str)
