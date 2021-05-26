class Article < ApplicationRecord
  belongs_to :user
  validates :title, :text, presence: true
  validates :title, length: { minimum: 6, maximum: 50 }
end
