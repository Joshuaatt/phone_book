class ContactPhoneNumber
  attr_reader :phone_number

  @@all_phone_numbers = []

  define_method(:initialize) do |attributes|
    @phone_number = attributes.fetch(:phone_number)
    @id = @@all_phone_numbers.length().+(1)
  end
  define_singleton_method(:all) do
    @@all_phone_numbers
  end
  define_method(:save) do
    @@all_phone_numbers.push(self)
  end
  define_singleton_method(:clear) do
    @@all_phone_numbers = []
  end
  define_method(:id) do
    @id
  end
  define_singleton_method(:find) do |identification|
    found_number = nil
    @@all_phone_numbers.each() do |number|
      if number.id().eql?(identification.to_i())
        found_number = number
      end
    end
    found_number
  end
end
