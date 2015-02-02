class PhoneNumber
  attr_reader(:number, :id)

  @@all_numbers = []

  define_method(:initialize) do |attributes|
    @number = attributes.fetch(:number)
    @id = @@all_numbers.length().+(1)
  end
  define_singleton_method(:all) do
    @@all_numbers
  end
  define_method(:save) do
    @@all_numbers.push(self)
  end
  define_singleton_method(:clear) do
    @@all_numbers = []
  end
  define_method(:id) do
    @id
  end
  define_singleton_method(:find) do |identification|
    found_number = nil
    @@all_numbers.each() do |number_find|
      if number_find.id().eql?(identification.to_i())
        found_number = number_find
      end
    end
    found_number
  end
end
