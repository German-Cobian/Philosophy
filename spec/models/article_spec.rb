require 'rails_helper'

RSpec.describe Article, type: :model do
  subject(:article) { Article.new(title: 'example', text: 'Example User', user_id: 2, category_id: 1) }

  describe 'validations tests' do
    it 'is not valid if the title is less than 6 characters' do
      article.title = 'strap'
      expect(article).to_not be_valid
    end

    it 'is valid if the title is between 6 and 50 characters' do
      article.title = 'example'
      article.valid?
      expect(article.errors[:title].size).to eq(0)
    end

    it 'is not valid if the text is less than 6 characters' do
      article.text = 'Naw!'
      expect(article).to_not be_valid
    end

    it 'is valid if the the text is between 6 and 2000 characters' do
      article.text = 'the unbearable lightness of being is quite lite actually'
      article.valid?
      expect(article.errors[:text].size).to eq(0)
    end

    it 'is not valid without a user_id' do
      article.user_id = nil
      expect(article).to_not be_valid
    end

    it 'is not valid without a category_id' do
      article.category_id = nil
      expect(article).to_not be_valid
    end
  end
end
