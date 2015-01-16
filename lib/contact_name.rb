class ContactName
  attr_reader :first_name, :last_name

  @@all_names = []

  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @id = @@all_names.length().+(1)
  end

  define_singleton_method(:all) do
    @@all_names
  end

  define_method(:save) do
    @@all_names.push(self)
  end

  define_singleton_method(:clear) do
    @@all_names = []
  end
  define_method(:id) do
    @id
  end
  define_singleton_method(:find) do |identification|
    found_name = nil
    @@all_names.each() do |name|
      if name.id().eql?(identification.to_i())
        found_name = name
      end
    end
    found_name
  end
end
