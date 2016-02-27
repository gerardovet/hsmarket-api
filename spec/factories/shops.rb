FactoryGirl.define do
  factory :shop do
    name { SecureRandom.hex(2) }
    description { FFaker::Lorem.sentence(3) }
  end
end
