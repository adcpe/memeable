class Meme < ApplicationRecord
  self.inheritance_column = :_type_disabled
  VALID_TYPE = ['image', 'gif'].freeze

  validates :title, :url_source, presence: true
  validates :title, uniqueness: true
  validates :type, inclusion: { in: VALID_TYPE, message: "should be image or gif" }
  validates :url_source, format: { with: /\.(jpg|png|gif)\z/, message: "Image should be jpg, png or gif" }

  belongs_to :category
  has_and_belongs_to_many :tags
  belongs_to :owner, class_name: "User", counter_cache: true
  has_many :votes
  has_many :comments
  has_many :users, through: :votes
end
