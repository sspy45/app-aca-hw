require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:d) { Dessert.new("brownie", 50, chef)}
  let(:chef) { double("chef", name: "Tony") }

  describe "#initialize" do
    it "sets a type" do
      expect(d.type).to eq("brownie")
    end
    it "sets a quantity" do
      expect(d.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do
      expect(d.ingredients).to be_empty
    end
    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new('bread', 'tons', 'Tony')}.to raise_error('Ammount must be an Integer')
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      d.add_ingredient('flour')
      expect(d.ingredients).to include('flour')
    end
  end

  describe "#mix!" do
    before(:each) { d.mix!}
    it "shuffles the ingredient array" do
      ingredients = ["chocolate", "flour"]
      ingredients.each do |i|
        d.add_ingredient(i)
      end
      expect(d.ingredients). to eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(d.eat(2)).to eq(48)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { d.eat(55) }.to raise_error('not enough left!')
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Tony the Great Baker")
      expect(d.serve).to eq("Chef Tony the Great Baker has made 50 brownies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(d)
      d.make_more
    end
  end
end
