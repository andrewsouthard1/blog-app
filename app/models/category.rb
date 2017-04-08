class Category < ApplicationRecord
  belongs_to :user
  has_many :categorized_posts
  has_many :posts, through: :categorized_posts
end
