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
