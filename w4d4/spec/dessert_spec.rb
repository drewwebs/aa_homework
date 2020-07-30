require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) { Dessert.new("pie",3,Chef.new("Drew"))}
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to be("pie")
    end
    it "sets a quantity" do
      expect(dessert.quantity).to be(3)
    end
    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end
    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("cookie","hot","Emily") }.to raise_error(ArgumentError)
    end
    
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("sugar")
      expect(dessert.ingredients.length).to eq(1)
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert.ingredients = ["sugar","flour","egg","water"]
      prev_ingred = dessert.ingredients.dup
      dessert.mix!
      expect(prev_ingred).to_not eq(dessert.ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(1)
      expect(dessert.quantity).to be(2)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { dessert.eat(4) }.to raise_error
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(dessert.serve).to include("Chef #{dessert.chef.name} the Great Baker")

    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      # allow(chef).to recieve(self).and return()
    end
  end
end
