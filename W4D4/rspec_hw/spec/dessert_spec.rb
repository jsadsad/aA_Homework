require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Josh") }
  let(:mochi) { Dessert.new("mochi", 50, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(mochi.type).to eq("mochi")
    end

    it "sets a quantity" do
      expect(mochi.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do
      expect(mochi.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("ice cream", "num", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      mochi.add_ingredient("matcha")
      expect(mochi.ingredients).to include("matcha")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = %w(flour sugar eggs rice)
      ingredients.each {|ing| mochi.add_ingredient(ing)}

      expect(mochi.ingredients).to eq(ingredients)
      mochi.mix!
      expect(mochi.ingredients).not_to eq(ingredients)
      expect(mochi.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(mochi.eat(10)).to eq(40)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { mochi.eat(70) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Josh the Great Baker")
      expect(mochi.serve).to eq("Chef Josh the Great Baker has made 50 mochis!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(mochi)
      mochi.make_more
    end
  end
end
