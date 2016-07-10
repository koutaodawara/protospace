FactoryGirl.define do
  factory :comment do
    product
    user
    text { Faker::Lorem.sentence }
  end
end
