require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject(:comment) { Comment.new(body: 'it sucks') }

  describe 'validations tests' do
    it 'is not valid if the title is less than 4 characters' do
      comment.body = 'Ugh'
      expect(comment).to_not be_valid
    end

    it 'is not valid if the title is more than 100 characters' do
      comment.body = "the unbearable lightness of being undermines all the conceptual notions that can be formed of its essence/
      it is wise and flowing in the absurdity of the now-moment, with much silliness to back it up"
      expect(comment).to_not be_valid
    end
  end
end
