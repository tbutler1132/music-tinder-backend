class User < ApplicationRecord
    popular

    has_secure_password
    
    has_many :demos
    
    has_many :likes
    
    has_many :liked_users, foreign_key: :liker_id, class_name: 'Like'
    has_many :liked, through: :liked_users

    has_many :liking_users, foreign_key: :liked_id, class_name: "Like"
    has_many :likers, through: :liking_users

#     has_many :second_liked_users, foreign_key: :first_id, class_name: 'Match'
#     has_many :second, through: :second_liked_users

#     has_many :first_liked_users, foreign_key: :second_id, class_name: 'Match'
#     has_many :first, through: :first_liked_users

    # def matches
    #     self.likers.concat(self.liked)
    # end

    # def tim
    #     self.liking_users.concat(self.liked_users)
    # end

end
