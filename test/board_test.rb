require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/board.rb'
require_relative '../lib/cell.rb'

class BoardTest < MiniTest::Unit::TestCase
  def test_board_contains_a_set_of_cells
    cells = [Cell.new(state: 1)]
    board = Board.new(cells: cells)

    assert_equal cells, board.cells
  end
end
