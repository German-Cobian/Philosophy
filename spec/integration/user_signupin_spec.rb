require 'rails_helper'

RSpec.describe 'Signing up to Philosopher', type: :controller do
  it 'allows user to sign in with the same name that he has signed up' do
    visit '/users/new'
    fill_in 'name', with: 'German'
    click_button 'Submit'
    sleep(1)
    visit '/sessions/new'
    fill_in 'session_name', with: 'German'
    click_button 'Sign in'
    sleep(1)
    expect(page).to have_content('German')
  end

  it 'does not permit user to sign up without filling in the name field' do
    visit '/users/new'
    fill_in 'name', with: ''
    click_button 'Submit'
    sleep(1)
    expect(page).to have_content('Could not create user')
  end

  it 'does not permit user to sign in without filling in the name field' do
    visit '/sessions/new'
    fill_in 'session_name', with: ''
    click_button 'Sign in'
    sleep(1)
    expect(page).to have_content('German')
  end
end
