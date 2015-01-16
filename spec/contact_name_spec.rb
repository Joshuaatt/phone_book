require('rspec')
require('contact_name')

describe(ContactName) do
  describe('#initialize') do
    it('is empty at first') do
      test_name = ContactName.new({:first_name => nil, :last_name => nil})
      expect(ContactName.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('saves the phone number and returns it') do
      test_name = ContactName.new({:first_name => "Joshua", :last_name => "Atteberry"})
      test_name.save()
      expect(ContactName.all()).to(eq([test_name]))
    end
  end
end
