FactoryGirl.define do 
  factory :user do 
    name      "Chris Thierer"
    email     "thierer1@umbc.edu"
    password  "foobar"
    password_confirmation "foobar"
  end
end