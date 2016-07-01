FactoryGirl.define do
  factory :user do
    password =  Faker::Internet.password(8)
    nickname              { Faker::Name.name }
    members                { Faker::Company.profession }
    works                  { Faker::Company.catch_phrase }
    profile               { Faker::Hacker.say_something_smart }
    avatar                "sample.jpg"
     email                 { Faker::Internet.email }
    password              password
    password_confirmation password
  end

end
