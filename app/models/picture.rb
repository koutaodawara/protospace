class Picture < ActiveRecord::Base
  enum status: [:main, :sub1]
end
