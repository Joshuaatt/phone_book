class Contact
  attr_reader :contact_name, :contact_phone_number

  define_method(:initialize) do |attributes|
    @contact_name = attributes.fetch(:contact_name)
    @contact_phone_number = attributes.fetch(:contact_phone_number)
  end


end
