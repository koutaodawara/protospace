class Product < ActiveRecord::Base
  belongs_to :user

   validates :title, presence: true
   validates :concept, presence: true
   validates :catch_copy, presence: true
   validates :user_id,presence: true
   # validates :image1, presence: true
   # validates :image2, presence: true
   # validates :image3, presence: true
end
