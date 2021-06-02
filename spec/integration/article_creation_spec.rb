require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  context 'when the user has signed up and signed in correctly' do
    it 'creates a new article' do
      visit '/users/new'
      fill_in 'name', with: 'German'
      click_button 'Submit'
      sleep(1)
      visit '/sessions/new'
      fill_in 'session_name', with: 'German'
      click_button 'Sign in'
      sleep(1)
      User.create(id: 1000, name: 'German')
      post :create, params: { 'article' => {
        'title' => 'Test article', 'text' => 'Test article body', 'category_id' => '1'
        } },
                    session: { user_id: 1 }
      sleep(1)
      expect(response).to be_ok
    end
  end
end
