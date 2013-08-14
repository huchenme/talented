# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job do
    employer nil
    title "MyString"
    description "MyText"
    responsibility "MyText"
    requirement "MyText"
    compensation nil
    ideal_candidate "MyText"
    availability nil
  end
end
