require('rspec')
require('contact')
require('name')
require('phone_number')

describe(Contact) do
  before() do
    Contact.clear()
  end
  describe('#initialize') do
    it("takes the name for a newly created contact and returns contact name") do
      test_contact = Contact.new({:contact_names => "Joshua Atteberry", :phone_numbers => nil})
      expect(test_contact.contact_names()).to(eq("Joshua Atteberry"))
    end
    it("takes the name and phone number for a newly created contact and returns contact phone number") do
      test_contact = Contact.new({ contact_names: "Joshua Atteberry" })
      test_contact.add_number("5125676637")
      expect(test_contact.phone_numbers()).to(eq(["5125676637"]))
    end
  end

  describe('.all_contacts') do
    it("returns empty") do
      test_contact = Contact.new({:contact_names => nil, :phone_numbers => nil})
      expect(Contact.all_contacts()).to(eq([]))
    end
  end

  describe('#save') do
    it("takes an input of two contacts and returns both contacts") do
      test_contact1 = Contact.new({:contact_names => "Joshua Atteberry", :phone_numbers => "5125676637"})
      test_contact1.save()
      test_contact2 = Contact.new({:contact_names => "Nikola Tesla", :phone_numbers => "1234567890"})
      test_contact2.save()
      expect(Contact.all_contacts()).to(eq([test_contact1, test_contact2]))
    end
  end
  describe(".clear") do
    it("empties out all saved contacts") do
      Contact.new({:contact_names => "Joshua", :phone_numbers => "5125676637"})
      Contact.clear()
      expect(Contact.all_contacts()).to(eq([]))
    end
  end
  describe('.find') do
    it("returns contact by its id number") do
      test_contact = Contact.new({:contact_names => "Joshua", :phone_numbers => "5125676637"})
      test_contact.save()
      test_contact2 = Contact.new({:contact_names => "Nikola Tesla", :phone_numbers => "1234567890"})
      test_contact2.save()
      expect(Contact.find(test_contact.id())).to(eq(test_contact))
    end
  end
  describe('#add_number') do
    it("adds a new phone number to a contact") do
      test_number = PhoneNumber.new(:number => "0987654321")
      test_contact = Contact.new(:contact_names => "Sally", :phone_numbers => nil)
      test_contact.add_number(test_number)
      expect(test_contact.phone_numbers()).to(eq([test_number]))
    end
  end
end
