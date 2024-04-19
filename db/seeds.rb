10.times do |i|
  title = "title-#{i}"
  content = "content-#{i}"
  completed = false
  Task.create!(
    title: title,
    content: content,
    completed: completed
  )
  
end
