class Contact
  attr_reader(:contact_name, :contact_phone_number)
  @@all_contacts = []

  define_method(:initialize) do |attributes|
    @contact_name = attributes.fetch(:contact_name)
    @contact_phone_number = attributes.fetch(:contact_phone_number)
    @id = @@all_contacts.length().+(1)
  end

  define_singleton_method(:all_contacts) do
    @@all_contacts
  end

  define_method(:save) do
    @@all_contacts.push(self)
  end

  define_method(:id) do
    @id
  end
  define_singleton_method(:clear) do
    @@all_contacts = []
  end
  define_singleton_method(:find) do |identification|
    found_contact = nil
    @@all_contacts.each() do |contact|
      if contact.id().eql?(identification.to_i())
        found_contact = contact
      end
    end
    found_contact
  end
  define_method(:add_phone_number) do |contact_phone_number|
    @contact_phone_number.push(contact_phone_number)
  end
end
