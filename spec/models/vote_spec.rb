require 'rails_helper'

RSpec.describe Vote, type: :model do
  subject(:vote) { Vote.new(user_id: 2, article_id: 6) }

  describe 'validations tests' do
    it 'is not valid without a user_id' do
      vote.user_id = nil
      expect(vote).to_not be_valid
    end
 
    it 'is not valid without an article_id' do
      vote.article_id = nil
      expect(vote).to_not be_valid
    end
  end
end