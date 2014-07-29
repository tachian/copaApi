# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :simple_question_alternative do
    name "MyText"
    media "MyString"
    correct false
    simple_question nil
  end
end
