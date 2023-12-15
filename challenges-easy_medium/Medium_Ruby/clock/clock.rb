class Clock
  DAY_MIN = 1440
  HOUR_MIN = 60

  def initialize(hour = 0, min = 0)
    @time = (hour * HOUR_MIN + min) % DAY_MIN
  end

  def self.at(hour = 0, min = 0)
    new(hour, min)
  end

  def to_s
    hours, min = @time.divmod(HOUR_MIN)
    format("%02d:%02d", hours, min)
  end

  def +(min)
    new_time = (@time + min).remainder(DAY_MIN)
    new_clock(new_time)
  end

  def -(min)
    new_time = if min > @time
                 DAY_MIN + (@time - min).remainder(DAY_MIN)
               else
                 @time - min
               end
    new_clock(new_time)
  end

  def ==(other)
    time == other.time
  end

  protected

  attr_accessor :time

  private

  def new_clock(new_time)
    new_clock = self.class.new
    new_clock.time = new_time
    new_clock
  end
end
