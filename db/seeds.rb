User.create!(name:  "Test User",
             email: "test@finalproject.come",
             password:              "qwerty",
             password_confirmation: "qwerty",
             activated: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              activated: true)
end
