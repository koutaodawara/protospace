class Like < ActiveRecord::Base
  belongs_to :product,:counter_cache =>:like_count
  belongs_to :user
end
