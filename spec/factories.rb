FactoryGirl.define do
  factory :account do
    name 'Pupper'
    zodiac 'Sagittarius'
    avatar_file_name 'weratedogs.jpg'
  end

  factory :user do
    email 'test@email.com'
    password 'brant6'
  end
end
