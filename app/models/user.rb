class User < ApplicationRecord
    has_secure_password

    has_many :demos



    # has_many :likes
    
    has_many :liked_users, foreign_key: :liker_id, class_name: 'Like'
    has_many :liked, through: :liked_users

    has_many :liking_users, foreign_key: :liked_id, class_name: "Like"
    has_many :likers, through: :liking_users

    # has_many :second_liked_users, foreign_key: :first_id, class_name: 'Match'
    # has_many :second, through: :second_liked_users

    # has_many :first_liked_users, foreign_key: :second_id, class_name: 'Match'
    # has_many :first, through: :first_liked_users

    has_many :sent_messages, class_name: 'Message'
    
    has_many :recieved_messages, foreign_key: :sender_id, class_name: 'Conversation'
    has_many :messages, through: :recieved_messages

    has_many :initiated_conversations, foreign_key: :sender_id, class_name: 'Conversation'
    has_many :received_conversations, foreign_key: :reciever_id, class_name: 'Conversation'

    # def match?(user)
    #     likers = self.likers
    #     liked = self.liked
    #     likers.include?(user) && liked.include?(user)
    # end

    def matches
        likers = self.likers
        liked = self.liked
        matches = likers.filter {|user| liked.include?(user)}
    end

end
