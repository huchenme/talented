# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :developer do
    relocate false
    position "MyString"
    location "MyString"
  end
end
