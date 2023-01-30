# variable's
win = 0
lose = 0
X = 'X'
O = 'O'
def win_check():
    global r1, r2, r3, r4, r5, r6, r7, r8, r9
    global X_win, O_win, tie
    global u_name, u2_name
    global win
    if r1 == 'X' and r2 == 'X' and r3 == 'X':
        X_win = True
    elif r4 == 'X' and r5 == 'X' and r6 == 'X':
        X_win = True
    elif r7 == 'X' and r8 == 'X' and r9 == 'X':
        X_win = True
    elif r1 == 'X' and r4 == 'X' and r7 == 'X':
        X_win = True
    elif r2 == 'X' and r5 == 'X' and r8 == 'X':
        X_win = True
    elif r3 == 'X' and r6 == 'X' and r9 == 'X':
        X_win = True
    elif r1 == 'X' and r5 == 'X' and r9 == 'X':
        X_win = True
    elif r3 == 'X' and r5 == 'X' and r7 == 'X':
        X_win = True
    elif r1 == 'O' and r2 == 'O' and r3 == 'O':
        O_win = True
    elif r4 == 'O' and r5 == 'O' and r6 == 'O':
        O_win = True
    elif r7 == 'O' and r8 == 'O' and r9 == 'O':
        O_win = True
    elif r1 == 'O' and r4 == 'O' and r7 == 'O':
        O_win = True
    elif r2 == 'O' and r5 == 'O' and r8 == 'O':
        O_win = True
    elif r3 == 'O' and r6 == 'O' and r9 == 'O':
        O_win = True
    elif r1 == 'O' and r5 == 'O' and r9 == 'O':
        O_win = True
    elif r3 == 'O' and r5 == 'O' and r7 == 'O':
        O_win = True
    if O_win:
        win = True
        return print('Winner is', u2_name.upper()), win
    if X_win:
        win = True
        return print('Winner is', u_name.upper()), win
    if r1 != '-' and r2 != '-' and r3 != '-' and r4 != '-' and r5 != '-' and r6 != '-' and r7 != '-' and r8 != '-' and r9 != '-':
        tie = True
        return print('This game is a tie'), tie

def check_game_x(X):
    global r1, r2, r3, r4, r5, r6, r7, r8, r9, command
    retry_check = False
    if command == 1 and r1 == '-':
        r1 = X
    elif command == 2 and r2 == '-':
        r2 = X
    elif command == 3 and r3 == '-':
        r3 = X
    elif command == 4 and r4 == '-':
        r4 = X
    elif command == 5 and r5 == '-':
        r5 = X
    elif command == 6 and r6 == '-':
        r6 = X
    elif command == 7 and r7 == '-':
        r7 = X
    elif command == 8 and r8 == '-':
        r8 = X
    elif command == 9 and r9 == '-':
        r9 = X
    elif command == 1 and r1 != '-' or command == 2 and r2 != '-' or command == 3 and r3 != '-' or command == 4 and r4 != '-' or command == 5 and r5 != '-' or command == 6 and r6 != '-' or command == 8 and r8 != '-' or command == 7 and r7 != '-' or command == 9 and r9 != '-':
        while not retry_check:
            command = int(input("Don't be Over smart! Try a place which is available as you can not over write a "
                                "place: "))
            check_game_x(X)
            retry_check = True
    elif command > 9:
        retry_check = False
        while not retry_check:
            command = int(input("Please select a number between 1-9 ONLY: "))
            check_game_x(X)
            retry_check = True
    return r1, r2, r3, r4, r5, r6, r7, r8, r9

if __name__ == "__main__":
    while True:
        r1 = '-'
        r2 = '-'
        r3 = '-'
        r4 = '-'
        r5 = '-'
        r6 = '-'
        r7 = '-'
        r8 = '-'
        r9 = '-'
        u_name = 'Player 1'
        u2_name = 'Player 2'
        X_win = False
        O_win = False
        #comp_turn = False
        win = False
        tie = False
        
        print('| Start game or New game  | To start a new game.                      |')
        print('| Exit or Quit            | To Quit/Exit the game.                    |')
        input_1 = input('>Tic-Tac-Toe> ').lower()
        if input_1 == 'start game' or input_1 == 'new game' or input_1 == 'game play' or input_1 == 'game start':
            game_on = True
            u_name = input('What should i call you player 1(X)? ')
            u2_name = input('What should i call you player 2(O)? ')
            print("let's see who wins today.")
            print("let's start with the game now", u_name.upper(), 'vs', u2_name.upper(), '\n\n')
            print(' ', 1, '|', 2, '|', 3, '\n ---------- \n', '', 4, '|', 5, '|', 6, '\n ----------\n', '', 7,
                    '|', 8, '|', 9, '\n')
            while game_on:
                    command = int(input('>> Please enter the position you want to place the X to(1-9 only): '))
                    check_game_x(X)
                    print('\n ', r1, '|', r2, '|', r3, '\n ---------- \n', '', r4, '|', r5, '|', r6, '\n ----------\n', '',
                        r7, '|', r8, '|', r9, '\n')

                    win_check()
                    if win or tie:
                        break

                    #command_2 = int(input('>> Please enter the position you want to place the O to(1-9 only): '))
                    command = int(input('>> Please enter the position you want to place the O to(1-9 only): '))
                    #check_game_o(O)
                    check_game_x(O)
                    print('\n ', r1, '|', r2, '|', r3, '\n ---------- \n', '', r4, '|', r5, '|', r6, '\n ----------\n', '',
                        r7, '|', r8, '|', r9, '\n')

                    win_check()
                    if win or tie:
                        break  
        elif input_1 == 'exit' or input_1 == 'quit':
            exit() 