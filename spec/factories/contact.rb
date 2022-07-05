FactoryBot.define do
  factory :contact do
    name           {Faker::Name.name}
    email          {Faker::Internet.free_email}
    subject        {Faker::Book.title}
    message        {Faker::String.random(length: 500)}
  end
end