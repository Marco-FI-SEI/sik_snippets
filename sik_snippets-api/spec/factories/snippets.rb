FactoryBot.define do
  factory :snippet do
    title { Faker::ProgrammingLanguage.word }
    body { Faker::Json.shallow_json(width: 4, options: { key: "Rockband.name", value: "StarWars.quote" }) }
    snippet_category_id nil
  end
end
