class User < ApplicationRecord
    has_secure_password

    has_many :demos 
    
    has_many :liked_users, foreign_key: :liker_id, class_name: 'Like'
    has_many :liked, through: :liked_users

    has_many :liking_users, foreign_key: :liked_id, class_name: "Like"
    has_many :likers, through: :liking_users
end
