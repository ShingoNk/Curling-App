class Team < ApplicationRecord
    mount_uploader :timage, ImageUploader

    belongs_to :user

    has_many :follows
    has_many :followed_users, through: :follows, source: :user

    has_many :users, dependent: :destroy


    def already_membered?(user)
        self.members.exists?(user_id: user.id)
    end
    


end
