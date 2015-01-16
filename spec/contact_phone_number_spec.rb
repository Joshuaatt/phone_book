require('rspec')
require('contact_phone_number')

describe(ContactPhoneNumber) do
  before() do
    ContactPhoneNumber.clear()
  end
  describe('#initialize') do
    it('is empty at first') do
      test_phone_number = ContactPhoneNumber.new({:phone_number => nil})
      expect(ContactPhoneNumber.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('saves the phone number and returns it') do
      test_number = ContactPhoneNumber.new({:phone_number => '5125676637'})
      test_number.save()
      expect(ContactPhoneNumber.all()).to(eq([test_number]))
    end
  end
  describe(".clear") do
    it("empties out all saved contact names") do
      ContactPhoneNumber.new({:phone_number => "5125676637"})
      ContactPhoneNumber.clear()
      expect(ContactPhoneNumber.all()).to(eq([]))
    end
  end
  describe('.find') do
    it("returns phone number by its id number") do
      test_number = ContactPhoneNumber.new({:phone_number => '5125676637'})
      test_number.save()
      test_number2 = ContactPhoneNumber.new({:phone_number => '1234567890'})
      test_number2.save()
      expect(ContactPhoneNumber.find(test_number.id())).to(eq(test_number))
    end
  end
end
