class Picture < ActiveRecord::Base
  enum status: [:main, :sub1,:sub2]
end
