class User < ApplicationRecord
  has_many :articles
  validates :name, presence: true, length: { in: 3..20 }, uniqueness: true
end
