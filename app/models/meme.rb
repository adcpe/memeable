class Meme < ApplicationRecord
  self.inheritance_column = :_type_disabled

  belongs_to :category
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :users

  validates :url_source, format: { with: /\.(jpg|png|gif)\z/, message: "Image should be jpg, png or gif" }
end
