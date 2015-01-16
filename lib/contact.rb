class Contact
  attr_reader(:contact_name, :contact_phone_number)
  @@all_contacts = []

  define_method(:initialize) do |attributes|
    @contact_name = attributes.fetch(:contact_name)
    @contact_phone_number = attributes.fetch(:contact_phone_number)
  end

  define_singleton_method(:all_contacts) do
    @@all_contacts
  end

  define_singleton_method(:save_contact) do
    @@all_contacts.push(@contact_name, @contact_phone_number)
  end

end
