# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :test_guide_basic do
    test nil
    test_type nil
    order 1
    name "MyString"
    message "MyText"
    simple_question nil
    group_question nil
  end
end
