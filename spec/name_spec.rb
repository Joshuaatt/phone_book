require('rspec')
require('name')

describe(Name) do
  before() do
    Name.clear()
  end
  describe('#initialize') do
    it('is empty at first') do
      test_name = Name.new({:first_name => nil, :last_name => nil})
      expect(Name.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('saves the phone number and returns it') do
      test_name = Name.new({:first_name => "Joshua", :last_name => "Atteberry"})
      test_name.save()
      expect(Name.all()).to(eq([test_name]))
    end
  end
  describe('#first_name') do
    it("returns the first name") do
      test_name = Name.new({:first_name => "Joshua", :last_name => "Atteberry"})
      test_name.save()
      expect(test_name.first_name()).to(eq("Joshua"))
    end
  end
  describe('#last_name') do
    it("returns the last name") do
      test_name = Name.new({:first_name => "Joshua", :last_name => "Atteberry"})
      test_name.save()
      expect(test_name.last_name()).to(eq("Atteberry"))
    end
  end
  describe(".clear") do
    it("empties out all saved names") do
      Name.new({:first_name => "Joshua", :last_name => "Atteberry"})
      Name.clear()
      expect(Name.all()).to(eq([]))
    end
  end
  describe('.find') do
    it("returns phone number by its id number") do
      test_name = Name.new({:first_name => "Joshua", :last_name => "Atteberry"})
      test_name.save()
      test_name2 = Name.new({:first_name => "Nikola", :last_name => "Tesla"})
      test_name2.save()
      expect(Name.find(test_name.id())).to(eq(test_name))
    end
  end
end
