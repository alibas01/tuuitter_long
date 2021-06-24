class Post < ApplicationRecord

  belongs_to :user

  validates :title, presence: true
  validates :post, presence: true
  validates :tags, presence: true

end
