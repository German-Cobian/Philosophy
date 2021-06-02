require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject(:comment) { Comment.new(body: 'it sucks', article_id: 3) }

  describe 'validations tests' do
    it 'is not valid if the title is less than 4 characters' do
      comment.body = 'Ugh'
      expect(comment).to_not be_valid
    end

    it 'is valid if body is between 4 and 100 characters' do
      comment.body = 'it sucks'
      comment.valid?
      expect(comment.errors[:body].size).to eq(0)
    end

    it 'is not valid without an article_id' do
      comment.article_id = nil
      expect(comment).to_not be_valid
    end
  end
end
