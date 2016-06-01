class Product < ActiveRecord::Base
  belongs_to :user
  has_many :pictures, inverse_of: :product, dependent: :delete_all
  has_many :likes, dependent: :delete_all
  has_many :comments
  accepts_nested_attributes_for :pictures
  validates :title, :concept, :catch_copy, presence: true

    def reject_picture(attributed)
    attributed['image'].blank?
    end

    def extension_white_list
    %w(jpg jpeg gif png)
  end
end
