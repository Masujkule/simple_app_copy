FactoryGirl.define do

sequence(:email) { |n| "user#{n}@goucz.com" }
  
  factory :user do
  	first_name "Lukasz"
  	last_name "Goucz"
  	email 
  	password "1234579"
  	admin false
  end
	
	factory :user2, class: User do
    first_name "user2"
    last_name  "User"
    admin true
		email
	end
end