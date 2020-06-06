users = [
  { email: 'thomas@example.com', first_name: 'Thomas', last_name: 'Bush', admin: true, bio: 'Hey!' },
  { email: 'bear@example.com', first_name: 'Bear', last_name: 'Bush', admin: false, bio: 'Woof!' },
]

users.each do |user|
  this_user = User.where(
    email: user[:email],
  ).first_or_initialize

  this_user.update!(
    first_name: user[:first_name],
    last_name: user[:last_name],
    admin: user[:admin],
    bio: user[:bio],
    password: SecureRandom.uuid,
  )
  this_user.save
end

videos = [
  { title: 'How to Add Devise Users and Admins to a Rails App', youtube_id: '8UIG9Ggu9Q4' },
  { title: 'How to use AWS SES to send email in a Rails App', youtube_id: 'YQd2as8HLtU' },
  { title: 'How to Create Your First Rails App', youtube_id: 'ssPPyizWJuc' },
]

videos.each do |video|
  this_video = Video.where(
    youtube_id: video[:youtube_id],
  ).first_or_initialize

  this_video.update!(
    title: video[:title],
  )
  this_video.save
end
