User.create!(name:  "Test User",
             email: "test@finalproject.com",
             password:              "qwerty",
             password_confirmation: "qwerty",
             admin: true,
             activated: true)

99.times do |n|
  name  = Faker::Name.name
  email = "test-#{n+1}@finalproject.com"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              activated: true)
end

Location.create!(name: "Antrim")
Location.create!(name: "Armagh")
Location.create!(name: "Carlow")
Location.create!(name: "Cavan")
Location.create!(name: "Clare")
Location.create!(name: "Cork")
Location.create!(name: "Derry")
Location.create!(name: "Donegal")
Location.create!(name: "Down")
Location.create!(name: "Dublin")
Location.create!(name: "Fermanagh")
Location.create!(name: "Galway")
Location.create!(name: "Kerry")
Location.create!(name: "Kildare")
Location.create!(name: "Kilkenny")
Location.create!(name: "Laois")
Location.create!(name: "Leitrim")
Location.create!(name: "Limerick")
Location.create!(name: "Longford")
Location.create!(name: "Louth")
Location.create!(name: "Mayo")
Location.create!(name: "Meath")
Location.create!(name: "Monaghan")
Location.create!(name: "Offaly")
Location.create!(name: "Roscommon")
Location.create!(name: "Sligo")
Location.create!(name: "Tipperary")
Location.create!(name: "Tyrone")
Location.create!(name: "Waterford")
Location.create!(name: "Westmeath")
Location.create!(name: "Wexford")
Location.create!(name: "Wicklow")

Category.create!(name: "Beginner")
Category.create!(name: "Intermediate")
Category.create!(name: "Advanced")








