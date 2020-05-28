class User < ApplicationRecord
  validates :username, :email, presence: true, uniqueness: true
  has_many :memes
  has_many :comments
end
