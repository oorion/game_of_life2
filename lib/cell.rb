class Cell
  attr_reader :state

  def initialize(state:)
    @state = state
  end

  def step(neighbors:)
    @state = 0
  end
end
