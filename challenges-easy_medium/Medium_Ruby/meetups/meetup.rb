require 'date'

class Meetup
  WEEKDAYS = %w[sunday monday tuesday wednesday thursday friday saturday].freeze

  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(weekday, monthday)
    sel_day = WEEKDAYS.index(weekday.downcase)
    all_weekdays = get_all_days(sel_day)
    select_date(all_weekdays, monthday.downcase)
  end

  private

  def get_all_days(sel_day)
    all_sel_weekdays = []
    curr_date = Date.civil(@year, @month, 1)
    loop do
      all_sel_weekdays << curr_date if curr_date.wday == sel_day
      curr_date = curr_date.next
      break if curr_date.month != @month
    end
    all_sel_weekdays
  end

  def select_date(all_weekdays, monthday) # rubocop:disable Metrics/CyclomaticComplexity
    case monthday
    when 'first' then all_weekdays[0]
    when 'second' then all_weekdays[1]
    when 'third' then all_weekdays[2]
    when 'fourth' then all_weekdays[3]
    when 'fifth' then all_weekdays[4]
    when 'last' then all_weekdays[-1]
    when 'teenth' then teenth_method(all_weekdays)
    end
  end

  def teenth_method(all_weekdays)
    all_weekdays.select { |d| d.day > 12 && d.day < 20 }.first
  end
end
