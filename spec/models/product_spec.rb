require 'rails_helper'

RSpec.describe Product, type: :model do
 describe 'Validations' do
  it "check to see if name is present" do
    @category = Category.new(name: "Name")
    @product = Product.new(name: nil, price_cents: 100, quantity: 2, category: @category)
    @product.save
    expect(@product.errors.full_messages).to include("Name can't be blank")
  end
  it "check to see if price is valid" do
    @category = Category.new(name: "Name")
    @product = Product.new(name: nil, price_cents: nil, quantity: 2, category: @category)
    @product.save
    expect(@product.errors.full_messages).to include("Price cents is not a number")
  end
  it "check to see if quantity is valid" do
    @category = Category.new(name: "Name")
    @product = Product.new(name: nil, price_cents: 100, quantity: nil, category: @category)
    @product.save
    expect(@product.errors.full_messages).to include("Quantity can't be blank")
  end
  it "check to see if quantity is valid" do
    @category = Category.new(name: "Name")
    @product = Product.new(name: nil, price_cents: 100, quantity: 2, category: nil)
    @product.save
    expect(@product.errors.full_messages).to include("Category must exist")
  end
 end
end
