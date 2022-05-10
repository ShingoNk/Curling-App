class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :uname, presence: true
  validates :uage, presence: true
  validates :uyoe, presence: true
  validates :uhole, presence: true
  validates :uassoci, presence: true
  validates :ufrequ, presence: true

  has_many :teams, dependent: :destroy

  has_many :follows, dependent: :destroy
  has_many :followed_teams, through: :follows, source: :team

  def already_followed?(team)
    self.follows.exists?(team_id: team.id)
  end


  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy

  has_many :rooms, through: :entries, source: :room
end
