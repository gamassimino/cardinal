module CardinalGem
  class Cardinal
    LITERAL = { zero: 0, one: 1, two: 2, three: 3, four: 4, five: 5, six: 6,
                seven: 7, eight: 8, nine: 9, ten: 10, eleven: 11, twelve: 12,
                thirteen: 13, fourteen: 14, fifteen: 15, sixteen: 16,
                seventeen: 17, eighteen: 18, nineteen: 19, twenty: 20,
                thirty: 30, forty: 40, fifty: 50, sixty: 60, seventy: 70,
                eighty: 80, ninety: 90 }

    def self.assert_equal(expected,actual)
      $stderr.puts "Assertion failed expected:#{expected.inspect} got:#{actual.inspect}" if expected != actual
    end

    def test_suite
      assert_equal('one', number_to_text(1).to_s)
      assert_equal('eleven', number_to_text(11).to_s)
      assert_equal('one hundred', number_to_text(100).to_s)
      assert_equal('two hundred three', number_to_text(203).to_s)
      assert_equal('four hundred twenty', number_to_text(420).to_s)
      assert_equal('one thousand', number_to_text(1000).to_s)
      assert_equal('three thousand two hundred fifty five', number_to_text(3255).to_s)
      assert_equal('ten thousand', number_to_text(10000).to_s)
      assert_equal('fifteen thousand', number_to_text(15000).to_s)
      assert_equal('twenty thousand two hundred twenty two', number_to_text(20222).to_s)
      assert_equal('one hundred thousand', number_to_text(100000).to_s)
      assert_equal('one hundred ten thousand', number_to_text(110000).to_s)
      assert_equal('one hundred ten thousand four hundred twenty', number_to_text(110420).to_s)
    end


    def self.number_to_text(number)
      $stderr.puts "The number expected is between 0 - 999.999" if number < 0 || number > 999999
      $stderr.puts "The input must be an Integer" if number.class != Integer

      return less_ten(number) if number < 10
      return less_one_hundred(number) if number < 100
      return less_one_thousand(number) if number < 1000
      return less_ten_thousand(number) if number < 10000
      return less_one_hundred_thousand(number) if number < 100000
      less_one_millon(number) if number < 1000000
    end

    private

    def less_ten(number)
      LITERAL.key(number)
    end

    def less_twenty(number)
      LITERAL.key(number)
    end

    def greater_twenty(number)
      return LITERAL.key(number) if (number % 10).zero?
      parsed_number = number.to_s
      [
        LITERAL.key("#{parsed_number[0]}0".to_i).to_s,
        LITERAL.key(parsed_number[1].to_i).to_s
      ].join(' ')
    end

    def less_one_hundred(number)
      return less_twenty(number) if number <= 20
      greater_twenty(number)
    end

    def less_one_thousand(number)
      parsed_number = number.to_s
      less_one_thousand = "#{less_ten(parsed_number[0].to_i)} hundred"
      less_one_thousand += " #{number_to_text(parsed_number[-2..-1].to_i)}" unless (number % 100).zero?
      less_one_thousand
    end

    def less_ten_thousand(number)
      parsed_number = number.to_s
      less_one_hundred_thousand = "#{less_ten(parsed_number[0].to_i)} thousand"
      less_one_hundred_thousand += " #{number_to_text(parsed_number[-3..-1].to_i)}" unless (number % 100).zero?
      less_one_hundred_thousand
    end

    def less_one_hundred_thousand(number)
      parsed_number = number.to_s
      less_one_millon = "#{less_one_hundred(parsed_number[0..1].to_i)} thousand"
      less_one_millon += " #{number_to_text(parsed_number[-3..-1].to_i)}" unless (number % 100).zero?
      less_one_millon
    end

    def less_one_millon(number)
      parsed_number = number.to_s
      less_one_millon = "#{less_one_thousand(parsed_number[0..2].to_i)} thousand"
      less_one_millon += " #{number_to_text(parsed_number[-4..-1].to_i)}" unless (number % 100).zero?
      less_one_millon
    end
  end
end