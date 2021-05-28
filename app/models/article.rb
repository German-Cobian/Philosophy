class Article < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: :user_id
  belongs_to :category, class_name: 'Category', foreign_key: :category_id
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_one_attached :image
  validates :title, :text, :category_id, presence: true
  validates :title, length: { minimum: 6, maximum: 50 }

  scope :most_recent_by_category, -> { order(created_at: :desc) }
end
