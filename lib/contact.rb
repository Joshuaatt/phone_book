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

end
