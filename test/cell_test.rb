require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/cell.rb'

class CellTest < MiniTest::Unit::TestCase
  def test_cell_dies_if_has_one_neighbor
    cell = Cell.new(state: 1)
    neighbors = Array.new(8, 0)
    neighbors[0] = 1

    cell.step(neighbors: neighbors)

    assert_equal 0, cell.state
  end
end
