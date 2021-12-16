def rockPaper(u1,u2):
    while True:
        if u1 == u2:
            return "It's a tie!"
        elif u1 == 'rock':
            if u2 == 'scissors':
                return "Rock wins!"
            else:
                return "Paper wins!"
        elif u1 == 'scissors':
            if u2 == 'paper':
                return "Scissors win!"
            else:
                return "Rock wins!"
        elif u1 == 'paper':
            if u2 == 'rock':
                return "Paper wins!"
            else:
                return "Scissors win!"
        b = input("Dou You play again then enter 'yes' otherwise enter 'no' : ")
        if b == 'yes':
            continue
        else:
            break



user1 = input("Enter Player1 Name : ")
user2 = input("Enter Player2 Name : ")
u1 = input("%s, do yo want to choose rock, paper or scissors : " % user1)
u2 = input("%s, do you want to choose rock, paper or scissors : " % user2)

print(rockPaper(u1,u2))




