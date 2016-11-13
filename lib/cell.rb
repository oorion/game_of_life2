require 'pry'

class Cell
  attr_reader :state

  def initialize(state:)
    @state = state
  end

  def step(neighbors:)
    alive_neighbors = neighbors.count {|value| value == 1}
    case alive_neighbors
    when 0, 1, 4, 5, 6, 7, 8
      @state = 0
    when 3
      @state = 1
    end
  end
end
