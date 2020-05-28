class User < ApplicationRecord
  validates :username, :email, presence: true, uniqueness: true

  has_and_belongs_to_many :memes
  has_many :comments
  has_many :memes, through: :comments
  has_and_belongs_to_many :voted_memes, join_table: "memes_users", class_name: "Meme"
end
