require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/cell.rb'

class CellTest < MiniTest::Unit::TestCase
  def test_cell_dies_if_has_no_neighbors
    cell = Cell.new(state: 1)
    neighbors = create_neighbors(number_of_cells_on: 0)

    cell.step(neighbors: neighbors)

    assert_equal 0, cell.state
  end

  def test_cell_dies_if_has_one_neighbor
    cell = Cell.new(state: 1)
    neighbors = create_neighbors(number_of_cells_on: 1)

    cell.step(neighbors: neighbors)

    assert_equal 0, cell.state
  end

  def test_cell_lives_if_has_two_neighbors
    cell = Cell.new(state: 1)
    neighbors = create_neighbors(number_of_cells_on: 2)

    cell.step(neighbors: neighbors)

    assert_equal 1, cell.state
  end

  def test_cell_lives_if_has_three_neighbors
    cell = Cell.new(state: 1)
    neighbors = create_neighbors(number_of_cells_on: 3)

    cell.step(neighbors: neighbors)

    assert_equal 1, cell.state
  end

  def test_cell_dies_if_has_four_neighbors
    cell = Cell.new(state: 1)
    neighbors = create_neighbors(number_of_cells_on: 4)

    cell.step(neighbors: neighbors)

    assert_equal 0, cell.state
  end

  def test_cell_dies_if_has_five_neighbors
    cell = Cell.new(state: 1)
    neighbors = create_neighbors(number_of_cells_on: 5)

    cell.step(neighbors: neighbors)

    assert_equal 0, cell.state
  end


  def test_cell_dies_if_has_six_neighbors
    cell = Cell.new(state: 1)
    neighbors = create_neighbors(number_of_cells_on: 6)

    cell.step(neighbors: neighbors)

    assert_equal 0, cell.state
  end

  def test_cell_dies_if_has_seven_neighbors
    cell = Cell.new(state: 1)
    neighbors = create_neighbors(number_of_cells_on: 7)

    cell.step(neighbors: neighbors)

    assert_equal 0, cell.state
  end

  def test_cell_dies_if_has_eight_neighbors
    cell = Cell.new(state: 1)
    neighbors = create_neighbors(number_of_cells_on: 8)

    cell.step(neighbors: neighbors)

    assert_equal 0, cell.state
  end

  def create_neighbors(number_of_cells_on:)
    on = Array.new(number_of_cells_on, 1)
    off = Array.new(8 - number_of_cells_on, 0)
    on + off
  end
end
