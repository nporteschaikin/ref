User.destroy_all
Asset.destroy_all
Channel.destroy_all

User.create!(
  email: "noah@porteschaikin.com",
  password: "test000",
  password_confirmation: "test000",
  handle: "npc"
)

User.first.create_avatar!(
  attachment: File.open(File.join(Rails.root, "public", "seeds", "first_user_avatar.jpg"))
)

User.first.channels.create!(
  name: "politics",
  title: "Politics",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
)

User.first.channels.create!(
  name: "sports",
  title: "Sports",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
)

User.first.channels.create!(
  name: "music",
  title: "Music",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
)

User.first.channels.create!(
  name: "technology",
  title: "Technology",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
)

Channel.all.each do |channel|
  User.first.questions.create!(
    channel: channel,
    title: "What is the meaning of life?",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et urna quis erat auctor dignissim vel eu velit. Nullam id venenatis nibh, vitae viverra elit."
  )
  User.first.questions.create!(
    channel: channel,
    title: "What is the meaning of love?",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et urna quis erat auctor dignissim vel eu velit. Nullam id venenatis nibh, vitae viverra elit."
  )
  User.first.questions.create!(
    channel: channel,
    title: "Is truth a human construct?",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et urna quis erat auctor dignissim vel eu velit. Nullam id venenatis nibh, vitae viverra elit."
  )
  User.first.questions.create!(
    channel: channel,
    title: "What is the meaning of life?",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et urna quis erat auctor dignissim vel eu velit. Nullam id venenatis nibh, vitae viverra elit."
  )
  User.first.questions.create!(
    channel: channel,
    title: "What is the meaning of love?",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et urna quis erat auctor dignissim vel eu velit. Nullam id venenatis nibh, vitae viverra elit."
  )
  User.first.questions.create!(
    channel: channel,
    title: "Is truth a human construct?",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et urna quis erat auctor dignissim vel eu velit. Nullam id venenatis nibh, vitae viverra elit."
  )
end
