FactoryBot.define do
  #faker generate unique data every time facory is invoked
  factory :todo do
    title { Faker::Lorem.word}
    created_by { Faker::Number.number(digits: 10)}
  end
end
