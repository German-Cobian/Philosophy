require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { User.new(name: 'german') }

  describe 'validations tests' do
    it 'is not valid if the name is less than 3 characters' do
      user.name = 'jp'
      expect(user).to_not be_valid
    end

    it 'is valid if the name is between 3 and 20 characters' do
      user.name = 'cobian'
      expect(user).to be_valid
    end

    it 'is not valid if the name is more than 20 characters' do
      user.name = 'abcdefghijklmnopqrstuvwxyz'
      expect(user).to_not be_valid
    end
  end
end
