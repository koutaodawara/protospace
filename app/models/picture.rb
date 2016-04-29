class Picture < ActiveRecord::Base
  enum status: [:main, :sub]
  belongs_to :product
end
