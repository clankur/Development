import random

######################################################################
# core.py
#
# Implements core functionality for a tic-tac-toe AI game
#
# Imported by: strategy.py
# Imported by: mini-shell.py
#
# Imports: random.py
#
# This implementation has no local or global state
# All functions operate on an immutable board parameter
# And return results to the caller
# (except for the old DFS routine to count boards)
#
# There are some redundancies that crept in as the code evolved
# So it could be cleaned up a bit
#
# This version works on N x N boards
#
# Patrick White Dec 2016
#
######################################################################

# constants
N = 3
start_state = "."*(N**2)
MAX = "X"
MIN = "O"
TIE = "TIE"
endings = (MAX, MIN, TIE)
rows = [[N*i+j for j in range(N)] for i in range(N)]
cols = [[N*j+i for j in range(N)] for i in range(N)]
diags = [list(range(0,N*N,N+1)), list(range(N-1,N*N-2,N-1))]
units = rows + cols + diags
evaluate = {MAX:1, MIN:-1, ".":0, TIE:0}

# globals only used for DFS, not in game play
count = 0
terminal_count = 0
all_boards = []

def print_board(board):
    """ print a tic-tac-toe board as a 2D array"""
    for i in range(N):
        print(board[N * i: N * i + N])
    print()

def terminal_test(board):
    """ test is the game board is over, return False if not, else the winner/tie """
    win = winner(board)
    if win is not None: return win
    if not "." in board: return TIE
    else: return False


def goal_test(board):
    """ return True iff there are N in a row/col/diag """
    return any(abs(sum([evaluate[board[j]] for j in s])) == N for s in units)


def winner(board):
    """ return the winner of winning board, or None if no winner """
    if any(sum([evaluate[board[j]] for j in s]) == N for s in units):
        return MAX
    if any(sum([evaluate[board[j]] for j in s]) == -N for s in units):
        return MIN
    return None


def result(board, player, var):
    """ assigns var to player on board and returns new board, player tuple """
    assert board[var] == ".", "%s is not empty" % str(var)
    new_board = board[:var] + player + board[var + 1:]
    return new_board, toggle(player)


def make_move(board, player, move):
    """ assigns var to player on board and returns new board """
    if board[move] != ".":
        raise IllegalMoveError(board, player, move)
    new_board = board[:move] + player + board[move + 1:]
    return new_board


def next_player(board, player):
    """ returns the next player if board is not finished """
    if terminal_test(board):
        return None
    else:
        return toggle(player)


def actions(board):
    """ returns a list of open squares in board (i.e. string indices) """
    open_squares = [i for (i,c) in enumerate(board) if c == "."]
    random.shuffle(open_squares)
    # use symmetry on first move
    if N==3 and len(open_squares)==9:
        return [0,1,4]
    elif N==4 and len(open_squares)==16:
        return [0,1,5]
    return open_squares


def toggle(player):
    """ returns the opposite of player """
    if player==MAX:
        return MIN
    else:
        return MAX


def dfs(board, player, depth):
    """ simple dfs to generate all game states """
    global count, terminal_count, all_boards

    if depth>4 and terminal_test(board):
        terminal_count+=1
        all_boards.append(board)
        return None

    for a in actions(board):
        dfs(*result(board, player, a), depth + 1)
        count+=1


class IllegalMoveError(Exception):
    def __init__(self, board, player, move ):
        self.player = player
        self.move = move
        self.board = board

    def __str__(self):
        return 'Forfeit! %s cannot move to square %d' % (self.player, self.move)
