FactoryGirl.define do
  factory :address do
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    city { FFaker::Address.city }
    country { FFaker::Address.country }
    street_address { FFaker::Address.street_address }
    zip { FFaker::Address.zip_code }
    phone { FFaker::Address.phone }
  end
end
