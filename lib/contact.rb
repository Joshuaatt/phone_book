class Contact
  attr_reader(:contact_names, :phone_numbers, :id)
  @@all_contacts = []

  define_method(:initialize) do |attributes|
    @phone_numbers = []
    @contact_names = attributes.fetch(:contact_names)
    # @contact_phone_numbers = attributes.fetch(:contact_phone_numbers)
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
  define_method(:add_number) do |some_phone_number|
    @phone_numbers.push(some_phone_number)
  end
end
