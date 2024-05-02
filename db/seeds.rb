10.times do |i|
  title = "title-#{i+1}"
  content = "content-#{i+1}"
  Task.create!(
    title: title,
    content: content,
  )
end

10.times do |i|
  name = "user-#{i+1}"
  email = "email-#{i+1}"
  User.create!(
    name: name,
    email: email,
  )
end