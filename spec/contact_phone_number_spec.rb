require('rspec')
require('contact_phone_number')

describe(ContactPhoneNumber) do
  describe('#initialize') do
    it('is empty at first') do
      test_phone_number = ContactPhoneNumber.new({:phone_number => nil})
      expect(ContactPhoneNumber.all()).to(eq([]))
    end
  end
end
