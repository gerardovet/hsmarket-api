FactoryGirl.define do
  factory :address do
    owner_type "MyString"
    owner_id 1
    name "MyString"
    address_type 1
    street "MyString"
    street_number "MyString"
    suite "MyString"
    neighbourhood "MyString"
    municipality "MyString"
    state "MyString"
    country "MyString"
    zipcode 1
    latitude "9.99"
    longitude "9.99"
  end
end
