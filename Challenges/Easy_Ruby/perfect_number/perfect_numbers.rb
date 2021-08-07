class PerfectNumber
  def self.classify(num)
    check_numer(num)

    case divisors(num)
    when num then 'perfect'
    when 0...num then 'deficient'
    when num.. then 'abundant'
    end
  end

  class << self
    private

    def check_numer(num)
      raise StandardError unless (num.instance_of? Integer) && num.positive?
    end

    def divisors(num)
      (1...num).to_a.select { |n| (num % n).zero? }.sum
    end
  end
end
