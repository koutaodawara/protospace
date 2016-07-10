include ActionDispatch::TestProcess
FactoryGirl.define do
  factory :picture do
    image { fixture_file_upload("spec/fixtures/sample.jpg", 'image/jpg') }
    trait :main do
      status   :main
    end

    trait :sub do
      status   :sub
    end

    factory :main, traits: [:main]
    factory :sub, traits: [:sub]
end
end
