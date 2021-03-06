class Category < ApplicationRecord
  has_many :articles, dependent: :destroy
  validates :name, :priority, presence: true

  has_one :most_recent_article, lambda {
                                  merge(Article.most_recent_by_category)
                                }, class_name: 'Article', inverse_of: :category
end
