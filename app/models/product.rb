class Product < ActiveRecord::Base
  belongs_to :user
  has_many :pictures,dependent: :delete_all
  accepts_nested_attributes_for :pictures,reject_if: :reject_picture
  validates :title,:concept,:catch_copy,presence: true

    def reject_picture(attributed)
    attributed['image'].blank?
    end

    def extension_white_list
    %w(jpg jpeg gif png)
  end
end
