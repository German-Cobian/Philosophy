class Comment < ApplicationRecord
  belongs_to :article
  validates_presence_of :body, length: { minimum: 4, maximum: 100 }
end
