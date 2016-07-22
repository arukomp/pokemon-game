class Player
  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = 60
  end

  def receive_damage
    @hit_points -= Kernel.rand(1..10)
  end


end
