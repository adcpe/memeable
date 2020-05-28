class User < ApplicationRecord
  validates :username, :email, presence: true, uniqueness: true
  has_and_belongs_to_many :memes
  has_many :comments
end
