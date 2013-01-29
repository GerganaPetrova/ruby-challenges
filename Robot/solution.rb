class Robot
  attr_reader :current_position, :marked_path

  def initialize(start_position)
    @current_position = start_position
    @marked_path = []
  end

  def move
    @current_position += 1
  end

  def mark
    @marked_path.push current_position
  end

end

def robot(start_position = 0, &block)
  robo = Robot.new start_position
  robo.instance_eval(&block)
  robo.marked_path
end
