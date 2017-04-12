FactoryGirl.define do
  factory :book do
    title { FFaker::Book.title }
    full_description { FFaker::Book.description }
    short_description { FFaker::DizzleIpsum.paragraph }
    image { FFaker::Book.cover }
    price { FFaker.numerify("##.##") }
  end
end
