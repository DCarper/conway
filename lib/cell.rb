class Cell
  attr_accessor :neighbors, :dead
  def initialize(options={})
    self.neighbors = options[:neighbors]
    self.dead = options[:dead]
  end
end
