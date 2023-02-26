require 'rails_helper'

RSpec.describe 'Categories Page', type: :feature do
  before(:each) do
    @user = User.create(username: 'test', email: 'tesfffft@example.com', password: 'password',
                        password_confirmation: 'password')
    @category = Group.create(name: 'CategoryColor', user_id: @user.id)
    visit root_path
    click_on 'Sign in / Sign up'
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_on 'Log in'
    visit root_path
  end

  describe 'Welcome Page' do
    it 'displays the title of the app' do
      expect(page).to have_content('New Group')
    end
    it 'displays the form of creating a new category' do
      click_on 'New Group'
      expect(page).to have_content('Name')
      expect(page).to have_content('Icon')
    end

    it 'displays the form of creating a new category' do
      click_on 'New Group'
      expect(page).to have_button('Submit')
    end
  end
end
