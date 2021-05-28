import strutils
import turn_based_game
import tables

type
  GameOfEgun = ref object of Game
    pile*: int

method setup*(self: GameOfEgun, players: seq[Player]) =
  self.default_setup(players)
  self.pile = 21

method set_possible_moves(self: GameOfEgun, moves: var OrderedTable[string, string]) =
  if self.pile == 1:
    moves = { "1": "Take One", "2": "Take Two"}.toOrderedTable
  elif self.pile == 2:
    moves = { "1": "Take One", "2": "Take Two", "3": "Take Three"}.toOrderedTable

method make_move(self: GameOfEgun, move: string): string =
  var count = move.parseInt()
  self.pile -= count # remove bones.
  return "$# flags removed.".format([count])

method determine_winner(self: GameOfEgun) =
  if self.winner_player_number > 0:
    return
  if self.pile <= 0:
    self.winner_player_number = self.current_player_number

method status(self: GameOfEgun): string =
  "$# flags available".format([self.pile])
  