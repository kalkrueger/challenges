#self with an uinput returns the time

class Clock
  MINUTES = 1440

  def initialize(hr, min)
    @time = (hr*60) + min
  end

  def self.at(hr, min=0)
    self.new(hr, min)
  end

  def to_s
    hour, minute = @time.divmod(60)
    "#{"%02d" % [hour]}:#{"%02d" % [minute]}"
  end

  def +(minutes)
    @time += minutes
    #@time = @time % MINUTES if @time > MINUTES
  end

end


clock =  Clock.at(11, 9) + 4
puts clock + 4
puts clock
