FactoryGirl.define do
  factory :order do
    shop_id { FactoryGirl.create(:shop).id }
    user_id { FactoryGirl.create(:user).id }
    total "9.99"
    status 0
  end
end
