require 'rails_helper'


describe Picture do
  let(:product){ create(:product) }
  describe 'associations' do
    it 'is associated with a product' do
      picture = create(:picture, :main, product: product)
      expect(picture.product).to eq product
    end
  end
  describe '#create' do
    describe 'with valid attribute' do
      it 'is error' do
        picture = build(:picture, :main, product: product)
        expect(picture).to be_valid
    end
end

    context "without image attribute" do
      it "returns error" do
        picture = build(:picture, :main, image: nil)
        picture.valid?
        expect(picture.errors[:image]).to include("can't be blank")
      end
    end

    context "without status attribute" do
      it "returns error" do
        picture = build(:picture, status: nil)
        picture.valid?
        expect(picture.errors[:status]).to include("can't be blank")
      end
    end
  end

end
