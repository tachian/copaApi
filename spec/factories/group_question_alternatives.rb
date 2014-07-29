# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :group_question_alternative do
    name "MyString"
    correct false
    group_question_statement nil
  end
end
