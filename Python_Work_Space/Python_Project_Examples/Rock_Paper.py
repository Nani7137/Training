
while(True):
    user1 = input("Enter Player1 Name : ")
    user2 = input("Enter Player2 Name : ")
    u1 = input("%s, do yo want to choose rock, paper or scissors : " % user1)
    u2 = input("%s, do you want to choose rock, paper or scissors : " % user2)

    if u1 == u2:
        print("It's a tie!")
    elif u1 == 'rock':
        if u2 == 'scissors':
            print("Rock wins!")
        else:
            print("Paper wins!")
    elif u1 == 'scissors':
        if u2 == 'paper':
            print("Scissors win!")
        else:
            print("Rock wins!")
    elif u1 == 'paper':
        if u2 == 'rock':
            print("Paper wins!")
        else:
            print("Scissors win!")

    b = input("Dou You play again then enter 'yes' otherwise enter 'no' : ")
    if b == 'yes':
        continue
    else:
        break

