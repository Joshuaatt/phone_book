class ContactPhoneNumber
  attr_reader :phone_number

  @@all_phone_numbers = []

  define_method(:initialize) do |attributes|
    @phone_number = attributes.fetch(:phone_number)
  end

  define_singleton_method(:all) do
    @@all_phone_numbers
  end

  define_method(:save) do
    @@all_phone_numbers.push(self)
  end
end
