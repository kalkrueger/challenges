class Robot
  @@robots = []

  def generate_name
    name = ''
    loop do
      2.times { name << ('A'..'Z').to_a.sample }
      3.times { name << ('0'..'9').to_a.sample }
      break unless @@robots.include?(name)
      name = ''
    end
    @@robots << name
    name
  end

  def reset
    @@robots.delete(@name)
    @name = nil
  end

  def name
    return @name unless @name.nil?
    @name = generate_name
  end
end
