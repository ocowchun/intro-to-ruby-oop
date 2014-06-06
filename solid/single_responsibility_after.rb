class IceBox
  attr_reader :ingredients
  def initialize
    @ingredients=[]
  end

  def add_ingredient ingredient
    @ingredients<<ingredient
  end

  def take_ingredients
    ingredients=@ingredients.join(",")
    @ingredients=[]
    ingredients
  end
end

class Chef
  attr_reader :icebox
  def initialize
    @icebox=IceBox.new
  end

  def add_ingredient ingredient
    @icebox.add_ingredient ingredient
  end

  def cook
    ingredients=@icebox.take_ingredients
    "cook with #{ingredients}"
  end
end

c=Chef.new
c.add_ingredient "beef"
c.add_ingredient "noodle"

p c.cook
