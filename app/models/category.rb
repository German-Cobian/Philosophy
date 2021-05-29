class Category < ApplicationRecord
  has_many :articles, dependent: :destroy

  has_one :most_recent_article, lambda {
    merge(Article.most_recent_by_category)
  }, class_name: 'Article', inverse_of: :category

  private

  def most_recent_article
    Category.articles.most_recent_by_category.limit(1).title
  end
end
