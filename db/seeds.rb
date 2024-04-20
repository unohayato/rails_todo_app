10.times do |i|
  title = "title-#{i+1}"
  content = "content-#{i+1}"
  completed = false
  Task.create!(
    title: title,
    content: content,
    completed: completed
  )
  
end
