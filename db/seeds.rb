User.create! name: "illuminati", email: "huymanhtmhp@gmail.com",
  password: "manhtmhp123", password_confirmation: "manhtmhp123", is_admin: true

Settings.user.seed_record.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "123456"
  User.create! name: name, email: email, password: password,
    password_confirmation: password
end

users = User.order(:created_at).take Settings.posts.user_taked
Settings.posts.seed_record.times do
  title = Faker::Lorem.sentence Settings.posts.title_sentence
  body = Faker::Lorem.sentence Settings.posts.body_sentence
  description = Faker::Lorem.sentence Settings.posts.des_sentence
  users.each{|user| user.posts.create!(title: title, body: body,
    description: description)}
end
