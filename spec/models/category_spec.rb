require 'rails_helper'

RSpec.describe Category, type: :model do
  
  describe 'associations tests' do
    it { should have_many(:articles).dependent(:destroy)}
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end