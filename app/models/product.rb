class Product < ActiveRecord::Base
  belongs_to :user
  has_many :pictures
  accepts_nested_attributes_for :pictures
   validates :title,:concept,:catch_copy ,presence: true
end
