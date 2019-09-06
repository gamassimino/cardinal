require 'cardinal_gem'

RSpec.describe CardinalGem do
  describe '#assert_equal' do
    it 'return true for numbers less than ten' do
      expected = CardinalGem::assert_equal('zero', CardinalGem::cardinal(0).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('one', CardinalGem::cardinal(1).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('two', CardinalGem::cardinal(2).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('three', CardinalGem::cardinal(3).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('four', CardinalGem::cardinal(4).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('five', CardinalGem::cardinal(5).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('six', CardinalGem::cardinal(6).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('seven', CardinalGem::cardinal(7).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('eight', CardinalGem::cardinal(8).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('nine', CardinalGem::cardinal(9).to_s)
      expect(expected).to be true
    end

    it 'return true for numbers less than twenty' do
      expected = CardinalGem::assert_equal('ten', CardinalGem::cardinal(10).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('eleven', CardinalGem::cardinal(11).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('twelve', CardinalGem::cardinal(12).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('thirteen', CardinalGem::cardinal(13).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('fourteen', CardinalGem::cardinal(14).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('fifteen', CardinalGem::cardinal(15).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('sixteen', CardinalGem::cardinal(16).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('seventeen', CardinalGem::cardinal(17).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('eighteen', CardinalGem::cardinal(18).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('nineteen', CardinalGem::cardinal(19).to_s)
      expect(expected).to be true
    end

    it 'mod ten' do
      expected = CardinalGem::assert_equal('twenty', CardinalGem::cardinal(20).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('thirty', CardinalGem::cardinal(30).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('forty', CardinalGem::cardinal(40).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('fifty', CardinalGem::cardinal(50).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('sixty', CardinalGem::cardinal(60).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('seventy', CardinalGem::cardinal(70).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('eighty', CardinalGem::cardinal(80).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('ninety', CardinalGem::cardinal(90).to_s)
      expect(expected).to be true
    end

    it 'return true for numbers less or equal than one hundred' do
      expected = CardinalGem::assert_equal('forty five', CardinalGem::cardinal(45).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('seventy nine', CardinalGem::cardinal(79).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('one hundred', CardinalGem::cardinal(100).to_s)
      expect(expected).to be true
    end

    it 'return true for numbers less or equal than one thousand' do
      expected = CardinalGem::assert_equal('two hundred three', CardinalGem::cardinal(203).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('four hundred twenty', CardinalGem::cardinal(420).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('one thousand', CardinalGem::cardinal(1000).to_s)
      expect(expected).to be true
    end

    it 'return true for numbers less or equal than ten thousand' do
      expected = CardinalGem::assert_equal('three thousand two hundred fifty five', CardinalGem::cardinal(3255).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('ten thousand', CardinalGem::cardinal(10000).to_s)
      expect(expected).to be true
    end

    it 'return true for numbers less or equal than one hundred thousand' do
      expected = CardinalGem::assert_equal('fifteen thousand', CardinalGem::cardinal(15000).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('twenty thousand two hundred twenty two', CardinalGem::cardinal(20222).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('one hundred thousand', CardinalGem::cardinal(100000).to_s)
      expect(expected).to be true
    end

    it 'return true for numbers less or equal than one millon' do
      expected = CardinalGem::assert_equal('one hundred ten thousand', CardinalGem::cardinal(110000).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('one hundred ten thousand four hundred twenty', CardinalGem::cardinal(110420).to_s)
      expect(expected).to be true

      expected = CardinalGem::assert_equal('one millon', CardinalGem::cardinal(1000000).to_s)
      expect(expected).to be true
    end
  end
end