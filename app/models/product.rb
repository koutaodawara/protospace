class Product < ActiveRecord::Base
  belongs_to :user
   validates :title,:concept,:catch_copy ,presence: true
   # validates :image1, presence: true
   # validates :image2, presence: true
   # validates :image3, presence: true
end
