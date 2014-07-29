# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :test_guide_scenario_ap do
    test_guide_scenario nil
    statement "MyText"
    simple_question nil
    group_question nil
  end
end
