# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :test_guide_scenario do
    test_guide_analysis nil
    name "MyString"
    media "MyString"
  end
end
