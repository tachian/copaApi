# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :test_guide_analysis do
    test nil
    name "MyString"
    media "MyString"
    statement "MyText"
    order 1
  end
end
