FactoryGirl.define do
  factory :photo do
    caption 'Look at this dog!'
    location 'Reykjavik'
    image_file_name 'super-pupper.png'
  end

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
