require('rspec')
require('phone_number')

describe(PhoneNumber) do
  before() do
    PhoneNumber.clear()
  end
  describe('#initialize') do
    it('is empty at first') do
      test_phone_number = PhoneNumber.new({:number => nil})
      expect(PhoneNumber.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('saves the phone number and returns it') do
      test_number = PhoneNumber.new({:number => '5125676637'})
      test_number.save()
      expect(PhoneNumber.all()).to(eq([test_number]))
    end
  end
  describe(".clear") do
    it("empties out all saved numbers") do
      PhoneNumber.new({:number => "5125676637"})
      PhoneNumber.clear()
      expect(PhoneNumber.all()).to(eq([]))
    end
  end
  describe('.find') do
    it("returns phone number by its id number") do
      test_number = PhoneNumber.new({:number => '5125676637'})
      test_number.save()
      test_number2 = PhoneNumber.new({:number => '1234567890'})
      test_number2.save()
      expect(PhoneNumber.find(test_number.id())).to(eq(test_number))
    end
  end
end
