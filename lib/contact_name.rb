class ContactName
  attr_reader :first_name, :last_name

  @@all_names = []

  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
  end

  define_singleton_method(:all) do
    @@all_names
  end

  define_method(:save) do
    @@all_names.push(self)
  end
end
