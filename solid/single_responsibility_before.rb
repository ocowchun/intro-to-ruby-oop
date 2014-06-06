class Chef
  attr_reader :ingredients
  def initialize
    @ingredients=[]
  end

  def add_ingredient ingredient
    @ingredients<< ingredient
  end

  def cook
    ingredients=@ingredients.join(",")
    @ingredients=[]
    "cook with #{ingredients}"
  end

  
end

c=Chef.new
c.add_ingredient "beef"
c.add_ingredient "noodle"

p c.cook
