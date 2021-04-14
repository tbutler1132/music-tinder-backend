User.destroy_all
Demo.destroy_all
Like.destroy_all
Conversation.destroy_all
Message.destroy_all

#Users

user_tim = User.create(name: "Tim", artist_name: "The Mute Spittah", role: "Rapper", genre: "Acapella", bio: "I spit hot fiya", location: "NY", tags: ["Hot", "fire"], email: "tbutler1132@gmail.com", password: "1234")
user_james = User.create(name: "James", artist_name: "Holla", role: "Rapper", genre: "Experimental", bio: "I fiya", location: "Mia", tags: ["Cold"], email: "1234", password: "1234")
user_john = User.create(name: "John", artist_name: "Dame", role: "Rapper", genre: "Trap", bio: "Ia", location: "CA", tags: ["Cold"], email: "1234", password: "1234")
user_jim = User.create(name: "Jim", artist_name: "Seev", role: "Rapper", genre: "G-funk", bio: "fiya", location: "MA", tags: ["Cold"], email: "1234", password: "1234")
user_steve = User.create(name: "Steve", artist_name: "Th", role: "Rapper", genre: "Boom Bap", bio: "iya", location: "SD", tags: ["Cold"], email: "1234", password: "1234")
user_kan = User.create(name: "Kan", artist_name: "fdsfs", role: "Rapper", genre: "Electronic", bio: "a", location: "Jac", tags: ["Cold"], email: "1234", password: "1234")
user_jamal = User.create(name: "Jamal", artist_name: "ffff", role: "Rapper", genre: "Alternative", bio: " ya", location: "Phi", tags: ["Cold"], email: "1234", password: "1234")
user_lamar = User.create(name: "Lamar", artist_name: "asdf", role: "Rapper", genre: "West Coast", bio: "Iya", location: "NY", tags: ["Cold"], email: "1234", password: "1234")
user_chloe = User.create(name: "Chloe", artist_name: "hjgjg", role: "Rapper", genre: "Soul", bio: "a", location: "Sev", tags: ["Cold"], email: "1234", password: "1234")
user_hi = User.create(name: "Hi", artist_name: "gdgdfgf", role: "Rapper", genre: "Acapella", bio: "Iiya", location: "Mia", tags: ["Cold"], email: "1234", password: "1234")

#Avatars

user_tim.avatar.attach(
    io: File.open('public/images/51ZYDQjsLVL._AC_.jpg'),
    filename: '51ZYDQjsLVL._AC_.jpg',
)

user_james.avatar.attach(
    io: File.open('public/images/51ZYDQjsLVL._AC_.jpg'),
    filename: '51ZYDQjsLVL._AC_.jpg',
)

user_john.avatar.attach(
    io: File.open('public/images/51ZYDQjsLVL._AC_.jpg'),
    filename: '51ZYDQjsLVL._AC_.jpg',
)

user_jim.avatar.attach(
    io: File.open('public/images/51ZYDQjsLVL._AC_.jpg'),
    filename: '51ZYDQjsLVL._AC_.jpg',
)

user_steve.avatar.attach(
    io: File.open('public/images/51ZYDQjsLVL._AC_.jpg'),
    filename: '51ZYDQjsLVL._AC_.jpg',
)

user_kan.avatar.attach(
    io: File.open('public/images/51ZYDQjsLVL._AC_.jpg'),
    filename: '51ZYDQjsLVL._AC_.jpg',
)

user_jamal.avatar.attach(
    io: File.open('public/images/51ZYDQjsLVL._AC_.jpg'),
    filename: '51ZYDQjsLVL._AC_.jpg',
)

user_lamar.avatar.attach(
    io: File.open('public/images/51ZYDQjsLVL._AC_.jpg'),
    filename: '51ZYDQjsLVL._AC_.jpg',
)

user_chloe.avatar.attach(
    io: File.open('public/images/51ZYDQjsLVL._AC_.jpg'),
    filename: '51ZYDQjsLVL._AC_.jpg',
)

user_hi.avatar.attach(
    io: File.open('public/images/51ZYDQjsLVL._AC_.jpg'),
    filename: '51ZYDQjsLVL._AC_.jpg',
)

#favorite songs

user_tim_favorite_song = FavoriteTrack.create(user: user_tim, name: "hurry", artist: "Keyon Christ", image: "https://i.scdn.co/image/ab67616d0000b2738f3ee61241342602986659cd", spotify_id: "1CcwlUd4mEkNxRyLLxZt5u", preview: "https://p.scdn.co/mp3-preview/df96e17e8eee60c8b319dd586c14cafa6f6f80bb?cid=052f33d1b1174510bd675c15cceb431f")
user_jamal_favorite_song = FavoriteTrack.create(user: user_jamal, name: "hurry", artist: "Keyon Christ", image: "https://i.scdn.co/image/ab67616d0000b2738f3ee61241342602986659cd", spotify_id: "1CcwlUd4mEkNxRyLLxZt5u", preview: "https://p.scdn.co/mp3-preview/df96e17e8eee60c8b319dd586c14cafa6f6f80bb?cid=052f33d1b1174510bd675c15cceb431f")
user_john_favorite_song = FavoriteTrack.create(user: user_john, name: "hurry", artist: "Keyon Christ", image: "https://i.scdn.co/image/ab67616d0000b2738f3ee61241342602986659cd", spotify_id: "1CcwlUd4mEkNxRyLLxZt5u", preview: "https://p.scdn.co/mp3-preview/df96e17e8eee60c8b319dd586c14cafa6f6f80bb?cid=052f33d1b1174510bd675c15cceb431f")
user_james_favorite_song = FavoriteTrack.create(user: user_james, name: "hurry", artist: "Keyon Christ", image: "https://i.scdn.co/image/ab67616d0000b2738f3ee61241342602986659cd", spotify_id: "1CcwlUd4mEkNxRyLLxZt5u", preview: "https://p.scdn.co/mp3-preview/df96e17e8eee60c8b319dd586c14cafa6f6f80bb?cid=052f33d1b1174510bd675c15cceb431f")
user_hi_favorite_song = FavoriteTrack.create(user: user_hi, name: "hurry", artist: "Keyon Christ", image: "https://i.scdn.co/image/ab67616d0000b2738f3ee61241342602986659cd", spotify_id: "1CcwlUd4mEkNxRyLLxZt5u", preview: "https://p.scdn.co/mp3-preview/df96e17e8eee60c8b319dd586c14cafa6f6f80bb?cid=052f33d1b1174510bd675c15cceb431f")
user_chloe_favorite_song = FavoriteTrack.create(user: user_chloe, name: "hurry", artist: "Keyon Christ", image: "https://i.scdn.co/image/ab67616d0000b2738f3ee61241342602986659cd", spotify_id: "1CcwlUd4mEkNxRyLLxZt5u", preview: "https://p.scdn.co/mp3-preview/df96e17e8eee60c8b319dd586c14cafa6f6f80bb?cid=052f33d1b1174510bd675c15cceb431f")
user_steve_favorite_song = FavoriteTrack.create(user: user_steve, name: "hurry", artist: "Keyon Christ", image: "https://i.scdn.co/image/ab67616d0000b2738f3ee61241342602986659cd", spotify_id: "1CcwlUd4mEkNxRyLLxZt5u", preview: "https://p.scdn.co/mp3-preview/df96e17e8eee60c8b319dd586c14cafa6f6f80bb?cid=052f33d1b1174510bd675c15cceb431f")
user_kan_favorite_song = FavoriteTrack.create(user: user_kan, name: "hurry", artist: "Keyon Christ", image: "https://i.scdn.co/image/ab67616d0000b2738f3ee61241342602986659cd", spotify_id: "1CcwlUd4mEkNxRyLLxZt5u", preview: "https://p.scdn.co/mp3-preview/df96e17e8eee60c8b319dd586c14cafa6f6f80bb?cid=052f33d1b1174510bd675c15cceb431f")
user_lamar_favorite_song = FavoriteTrack.create(user: user_lamar, name: "hurry", artist: "Keyon Christ", image: "https://i.scdn.co/image/ab67616d0000b2738f3ee61241342602986659cd", spotify_id: "1CcwlUd4mEkNxRyLLxZt5u", preview: "https://p.scdn.co/mp3-preview/df96e17e8eee60c8b319dd586c14cafa6f6f80bb?cid=052f33d1b1174510bd675c15cceb431f")
user_jim_favorite_song = FavoriteTrack.create(user: user_jim, name: "hurry", artist: "Keyon Christ", image: "https://i.scdn.co/image/ab67616d0000b2738f3ee61241342602986659cd", spotify_id: "1CcwlUd4mEkNxRyLLxZt5u", preview: "https://p.scdn.co/mp3-preview/df96e17e8eee60c8b319dd586c14cafa6f6f80bb?cid=052f33d1b1174510bd675c15cceb431f")

#Demos

tim_demo = Demo.create(title: "still falling", user: user_tim)
tim_demo2 = Demo.create(title: "All Day", user: user_tim)


james_demo = Demo.create(title: "still falling", user: user_james)
james_demo2 = Demo.create(title: "All Day", user: user_james)
james_demo3 = Demo.create(title: "Real Friends", user: user_james)

john_demo = Demo.create(title: "still falling", user: user_john)
john_demo2 = Demo.create(title: "All Day", user: user_john)
john_demo3 = Demo.create(title: "Real Friends", user: user_john)

jim_demo = Demo.create(title: "still falling", user: user_jim)
jim_demo2 = Demo.create(title: "All Day", user: user_jim)
jim_demo3 = Demo.create(title: "Real Friends", user: user_jim)

steve_demo = Demo.create(title: "still falling", user: user_steve)
steve_demo2 = Demo.create(title: "All Day", user: user_steve)
steve_demo3 = Demo.create(title: "Real Friends", user: user_steve)

kan_demo = Demo.create(title: "still falling", user: user_kan)
kan_demo2 = Demo.create(title: "All Day", user: user_kan)
kan_demo3 = Demo.create(title: "Real Friends", user: user_kan)

jamal_demo = Demo.create(title: "still falling", user: user_jamal)
jamal_demo2 = Demo.create(title: "All Day", user: user_jamal)
jamal_demo3 = Demo.create(title: "Real Friends", user: user_jamal)

lamar_demo = Demo.create(title: "still falling", user: user_lamar)
lamar_demo2 = Demo.create(title: "All Day", user: user_lamar)
lamar_demo3 = Demo.create(title: "Real Friends", user: user_lamar)

chloe_demo = Demo.create(title: "still falling", user: user_chloe)
chloe_demo2 = Demo.create(title: "All Day", user: user_chloe)
chloe_demo3 = Demo.create(title: "Real Friends", user: user_chloe)

hi_demo = Demo.create(title: "still falling", user: user_hi)
hi_demo2 = Demo.create(title: "All Day", user: user_hi)
hi_demo3 = Demo.create(title: "Real Friends", user: user_hi)

# Likes

tim_james_like = Like.create(liker_id: user_tim.id, liked_id: user_james.id, match: false)

james_tim_like = Like.create(liker_id: user_james.id, liked_id: user_tim.id, match: false)


john_tim_like = Like.create(liker_id: user_john.id, liked_id: user_tim.id, match: false)

lamar_tim_like = Like.create(liker_id: user_lamar.id, liked_id: user_tim.id, match: false)

tim_james_conversation = Conversation.create(sender_id: user_tim.id, reciever_id: user_james.id)

tim_james_message = Message.create(content: "Hey", conversation: tim_james_conversation, user: user_tim)

james_tim_message = Message.create(content: "Sup", conversation: tim_james_conversation, user: user_james)



#Files

tim_demo.audio_data.attach(
    io: File.open('./public/audio/still_falling.mp3'),
    filename: 'still_falling.mp3',
)

tim_demo2.audio_data.attach(
    io: File.open('./public/audio/All_Day.mp3'),
    filename: 'still_falling.mp3',
)



james_demo.audio_data.attach(
    io: File.open('./public/audio/still_falling.mp3'),
    filename: 'still_falling.mp3',
)

james_demo2.audio_data.attach(
    io: File.open('./public/audio/All_Day.mp3'),
    filename: 'still_falling.mp3',
)

james_demo3.audio_data.attach(
    io: File.open('./public/audio/Real_friends.mp3'),
    filename: 'still_falling.mp3',
)

john_demo.audio_data.attach(
    io: File.open('./public/audio/still_falling.mp3'),
    filename: 'still_falling.mp3',
)

john_demo2.audio_data.attach(
    io: File.open('./public/audio/All_Day.mp3'),
    filename: 'still_falling.mp3',
)

john_demo3.audio_data.attach(
    io: File.open('./public/audio/Real_friends.mp3'),
    filename: 'still_falling.mp3',
)

jim_demo.audio_data.attach(
    io: File.open('./public/audio/still_falling.mp3'),
    filename: 'still_falling.mp3',
)

jim_demo2.audio_data.attach(
    io: File.open('./public/audio/All_Day.mp3'),
    filename: 'still_falling.mp3',
)

jim_demo3.audio_data.attach(
    io: File.open('./public/audio/Real_friends.mp3'),
    filename: 'still_falling.mp3',
)

steve_demo.audio_data.attach(
    io: File.open('./public/audio/still_falling.mp3'),
    filename: 'still_falling.mp3',
)

steve_demo2.audio_data.attach(
    io: File.open('./public/audio/All_Day.mp3'),
    filename: 'still_falling.mp3',
)

steve_demo3.audio_data.attach(
    io: File.open('./public/audio/Real_friends.mp3'),
    filename: 'still_falling.mp3',
)

kan_demo.audio_data.attach(
    io: File.open('./public/audio/still_falling.mp3'),
    filename: 'still_falling.mp3',
)

kan_demo2.audio_data.attach(
    io: File.open('./public/audio/All_Day.mp3'),
    filename: 'still_falling.mp3',
)

kan_demo3.audio_data.attach(
    io: File.open('./public/audio/Real_friends.mp3'),
    filename: 'still_falling.mp3',
)

jamal_demo.audio_data.attach(
    io: File.open('./public/audio/still_falling.mp3'),
    filename: 'still_falling.mp3',
)

jamal_demo2.audio_data.attach(
    io: File.open('./public/audio/All_Day.mp3'),
    filename: 'still_falling.mp3',
)

jamal_demo3.audio_data.attach(
    io: File.open('./public/audio/Real_friends.mp3'),
    filename: 'still_falling.mp3',
)

lamar_demo.audio_data.attach(
    io: File.open('./public/audio/still_falling.mp3'),
    filename: 'still_falling.mp3',
)

lamar_demo2.audio_data.attach(
    io: File.open('./public/audio/All_Day.mp3'),
    filename: 'still_falling.mp3',
)

lamar_demo3.audio_data.attach(
    io: File.open('./public/audio/Real_friends.mp3'),
    filename: 'still_falling.mp3',
)

chloe_demo.audio_data.attach(
    io: File.open('./public/audio/still_falling.mp3'),
    filename: 'still_falling.mp3',
)

chloe_demo2.audio_data.attach(
    io: File.open('./public/audio/All_Day.mp3'),
    filename: 'still_falling.mp3',
)

chloe_demo3.audio_data.attach(
    io: File.open('./public/audio/Real_friends.mp3'),
    filename: 'still_falling.mp3',
)

hi_demo.audio_data.attach(
    io: File.open('./public/audio/still_falling.mp3'),
    filename: 'still_falling.mp3',
)

hi_demo2.audio_data.attach(
    io: File.open('./public/audio/All_Day.mp3'),
    filename: 'still_falling.mp3',
)

hi_demo3.audio_data.attach(
    io: File.open('./public/audio/Real_friends.mp3'),
    filename: 'still_falling.mp3',
)
