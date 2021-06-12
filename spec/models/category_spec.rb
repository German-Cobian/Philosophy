require 'rails_helper'

RSpec.describe Category, type: :model do
  subject(:category) { Category.new(name: 'bonkers', priority: 3) }

  describe 'validations tests' do
    it 'is not valid without a category name' do
      category.name = nil
      expect(category).to_not be_valid
    end

    it 'is not valid without a priority number assigned' do
      category.priority = nil
      expect(category).to_not be_valid
    end
  end
end
