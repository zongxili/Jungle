require 'rails_helper'
RSpec.describe Product, type: :model do
  describe 'Validations' do
    let (:category){ Category.create(name: "categoryHere")}
    subject { described_class.new(name: "here", price_cents: 10, quantity: 10, category_id: category.id) }

    # validation tests/examples here
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
  
    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a price" do
      subject.price_cents = nil
      expect(subject).to_not be_valid
    end
  
    it "is not valid without a quantity" do
      subject.quantity = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a category_id" do
      subject.category_id = nil
      expect(subject).to_not be_valid
    end
  end
end