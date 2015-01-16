require('rspec')
require('contact')

describe(Contact) do
  describe('#initialize') do
    it("takes the name and phone number for a newly created contact and returns contact name") do
      test_contact = Contact.new({:contact_name => "Joshua Atteberry", :contact_phone_number => "5125676637"})
      expect(test_contact.contact_name()).to(eq("Joshua Atteberry"))
    end
    it("takes the name and phone number for a newly created contact and returns contact name") do
      test_contact = Contact.new({:contact_name => "Joshua Atteberry", :contact_phone_number => "5125676637"})
      expect(test_contact.contact_phone_number()).to(eq("5125676637"))
    end
  end

  describe('.all_contacts') do
    it("returns empty") do
      test_contact = Contact.new({:contact_name => nil, :contact_phone_number => nil})
      expect(Contact.all_contacts()).to(eq([]))
    end
    # add "returns all contacts spec"
  end

  describe('#save') do
    it("takes an input of two contacts and returns both contacts") do
      test_contact1 = Contact.new({:contact_name => "Joshua Atteberry", :contact_phone_number => "5125676637"})
      test_contact1.save()
      test_contact2 = Contact.new({:contact_name => "Nikola Tesla", :contact_phone_number => "1234567890"})
      test_contact2.save()
      expect(Contact.all_contacts()).to(eq([test_contact1, test_contact2]))
    end
  end

end
