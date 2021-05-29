require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject(:comment) { Comment.new(body: 'it sucks') }

  describe 'validations tests' do
    it 'is not valid if the title is less than 4 characters' do
      comment.body = 'Ugh'
      expect(comment).to_not be_valid
    end
  end
end
