class Player
  attr_reader :name, :hit_points

  def initialize
    @name = nil
    @hit_points = 7
  end

  def set_name(the_name)
    change_name(the_name)
  end

  def lose_hit_points(number)
    change_hit_points_down(number)
  end

  private

  def change_name(name)
    @name = name
  end

  def change_hit_points_down(number)
    @hit_points -= number
  end
end
