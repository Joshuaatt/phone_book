require('rspec')
require('contact')

describe(Contact) do
  describe('#initialize') do
    it("takes the name and phone number for a newly created contact and returns that contact") do
      test_contact = Contact.new({:contact_name => "Joshua", :contact_phone_number => "5125676637"})
      expect(test_contact.contact_name()).to(eq("Joshua"))
    end
  end
end
