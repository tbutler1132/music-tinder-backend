User.destroy_all
Demo.destroy_all

user_tim = User.create(name: "Tim", artist_name: "The Mute Spittah", role: "Rapper", genre: "Acapella", bio: "I spit hot fiya", location: "NY", tags: "Hot", email: "tbutler1132@gmail.com", password: "1234")
user_james = User.create(name: "James", artist_name: "Ho", role: "Rapper", genre: "Acapella", bio: "I fiya", location: "Mia", tags: "Cold", email: "1234", password: "1234")

tim_demo = Demo.create(title: "Figure Out", user: user_tim)

tim_demo.audio_data.attach(
    io: File.open('./public/audio/still_falling.mp3'),
    filename: 'still_falling.mp3',
)

tim_demo.audio_data.attach(
    io: File.open('./public/audio/still_falling.mp3'),
    filename: 'still_falling.mp3',
)

tim_demo.audio_data.attach(
    io: File.open('./public/audio/still_falling.mp3'),
    filename: 'still_falling.mp3',
)
