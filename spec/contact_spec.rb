require('rspec')
require('contact')

describe(Contact) do
  describe('#initialize') do
    it("takes the name and phone number for a newly created contact and returns contact name") do
      test_contact = Contact.new({:contact_name => "Joshua", :contact_phone_number => "5125676637"})
      expect(test_contact.contact_name()).to(eq("Joshua"))
    end
    it("takes the name and phone number for a newly created contact and returns contact name") do
      test_contact = Contact.new({:contact_name => "Joshua", :contact_phone_number => "5125676637"})
      expect(test_contact.contact_phone_number()).to(eq("5125676637"))
    end
  end

  describe('.all_contacts') do
    it("returns empty") do
      test_contact = Contact.new({:contact_name => nil, :contact_phone_number => nil})
      expect(Contact.all_contacts()).to(eq([]))
    end
  end

end
