module CardinalGem
  LITERAL = { zero: 0, one: 1, two: 2, three: 3, four: 4, five: 5, six: 6,
              seven: 7, eight: 8, nine: 9, ten: 10, eleven: 11, twelve: 12,
              thirteen: 13, fourteen: 14, fifteen: 15, sixteen: 16,
              seventeen: 17, eighteen: 18, nineteen: 19, twenty: 20,
              thirty: 30, forty: 40, fifty: 50, sixty: 60, seventy: 70,
              eighty: 80, ninety: 90 }

  def self.assert_equal(expected,actual)
    if expected != actual
      $stderr.puts "Assertion failed expected:#{expected.inspect} got:#{actual.inspect}"
      return false
    end
    true
  end

  def self.cardinal(number)
    case number.to_s.size
    when 7
      one_millon(number)
    when 6
      one_hundred_thousand(number)
    when 5
      ten_thousand(number)
    when 4
      one_thousand(number)
    when 3
      one_hundred(number)
    else
      greater_twenty(number)
    end
  end

  def self.greater_twenty(number)
    return LITERAL.key(number) if (number % 10).zero? || number <= 20
    parsed_number = number.to_s
    [
      LITERAL.key("#{parsed_number[0]}0".to_i).to_s,
      LITERAL.key(parsed_number[1].to_i).to_s
    ].join(' ')
  end

  # from 0 to 999
  def self.one_hundred(number)
    output = []
    output << "#{LITERAL.key(number.to_s[0].to_i)} hundred" unless (number/100).zero?
    parsed_number = number.to_s[1..-1].to_i
    output << greater_twenty(parsed_number) unless parsed_number.zero?
    output.join(' ')
  end

  # from 1000 to 9999
  def self.one_thousand(number)
    output = []
    output << "#{LITERAL.key(number.to_s[0].to_i)} thousand" unless (number/1000).zero?
    parsed_number = number.to_s[1..-1].to_i
    output << cardinal(parsed_number) unless parsed_number.zero?
    output.join(' ')
  end

  # from 10000 to 99999
  def self.ten_thousand(number)
    output = []
    output << "#{cardinal(number.to_s[0..1].to_i)} thousand" unless (number/10000).zero?
    parsed_number = number.to_s[2..-1].to_i
    output << cardinal(parsed_number) unless parsed_number.zero?
    output.join(' ')
  end

  # from 100000 to 999999
  def self.one_hundred_thousand(number)
    output = []
    output << "#{cardinal(number.to_s[0].to_i)} hundred" unless (number/100000).zero?
    parsed_number = number.to_s[1..-1].to_i
    parsed_number.zero? ? output << "thousand" : output << cardinal(parsed_number)
    output.join(' ')
  end

  # from 1000000 to
  def self.one_millon(number)
    output = []
    output << "#{LITERAL.key(number.to_s[0].to_i)} millon" unless (number/1000000).zero?
    parsed_number = number.to_s[1..-1].to_i
    output << cardinal(parsed_number) unless parsed_number.zero?
    output.join(' ')
  end

end
