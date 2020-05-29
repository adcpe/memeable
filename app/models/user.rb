class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, :email, presence: true, uniqueness: true

  has_and_belongs_to_many :memes
  has_many :comments
  has_many :memes, through: :comments
  has_many :votes
  has_many :memes, through: :votes
end
