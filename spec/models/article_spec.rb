require 'rails_helper'

RSpec.describe Article, type: :model do
  subject(:article) { Article.new(title: 'example', text: 'Example User', user_id: 2, category_id: 6) }

  describe 'validations tests' do
    it 'is not valid if the title is less than 6 characters' do
      article.title = 'strap'
      expect(article).to_not be_valid
    end

    it 'is not valid if the title is more than 50 characters' do
      article.title = 'the unbearable lightness of being undermines all the conceptual notions that can be formed of its essence'
      expect(article).to_not be_valid
    end
  end
end
