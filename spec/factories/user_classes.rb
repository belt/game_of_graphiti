FactoryBot.define do
  factory :user_class do
    name { "MyString" }
    start_date { "2021-07-07" }
    end_date { "2021-07-07" }
    timezone { 1 }
    description { "MyText" }
  end
end
