require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'associations tests' do
    it { should have_many(:articles).with_foreign_key(:author_id) }
  end

  describe 'validations tests' do
    it { should validate_presence_of(:name) }
  end
end