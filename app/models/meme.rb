class Meme < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :users
end
