require 'rails_helper'

RSpec.describe Article, type: :model do
  
  describe 'associations tests' do
    it { should belong_to(:creator).class_name(User.name) }
    it { should belong_to(:category) }
    it { should have_many(:votes).dependent(:destroy) }
  end

  describe 'validations tests' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:category_id) }
  end 
end