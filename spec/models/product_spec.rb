require 'rails_helper'
describe Product do
  describe 'associations' do
    it 'is associated with a user' do
      user = create(:user)
      product = create(:product, user: user)
      expect(product.user).to eq user
    end
  end

  describe '#create' do
    context 'valid' do
      it "is valid with all information" do
        product = build(:product)
        expect(product).to be_valid
      end
    end

    context 'invalid' do
      it "is invalid without a catch_copy" do
        product = build(:product, catch_copy: "")
        product.valid?
        expect(product.errors[:catch_copy]).to include("can't be blank")
      end

      it "is invalid without a title" do
        product = build(:product, title: "")
        product.valid?
        expect(product.errors[:title]).to include("can't be blank")
      end

      it "is invalid without a concept" do
        product = build(:product, concept: "")
        product.valid?
        expect(product.errors[:concept]).to include("can't be blank")
      end
     end

  end
end
