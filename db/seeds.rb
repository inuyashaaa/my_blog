User.create! name: "illuminati", email: "huymanhtmhp@gmail.com",
  password: "manhtmhp123", password_confirmation: "manhtmhp123", is_admin: true

Settings.user.seed_record.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "123456"
  User.create! name: name, email: email, password: password,
    password_confirmation: password
end
