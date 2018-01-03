require 'rails_helper'

describe 'creating a group' do
  it 'will create a new group' do
    @current_user = FactoryBot.create(:user)
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', :with => @current_user.email
    fill_in 'Password', :with => '123456'
    click_button 'Log in'
    click_link 'Create Group'
    fill_in 'Name', :with => 'Test'
    fill_in 'Game title', :with => 'Test'
    fill_in 'Players needed', :with => '2'
    fill_in 'Location', :with => 'Test'
    fill_in 'Play location', :with => 'Test'
    fill_in 'Description', :with => 'Test'
    click_button 'Create Group'
    expect(page).to have_content "Your group has been created!"
  end

  it 'will not create group if game title is not present' do
    @current_user = FactoryBot.create(:user)
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', :with => @current_user.email
    fill_in 'Password', :with => '123456'
    click_button 'Log in'
    click_link 'Create Group'
    fill_in 'Name', :with => 'Test'
    fill_in 'Players needed', :with => '2'
    fill_in 'Location', :with => 'Test'
    fill_in 'Play location', :with => 'Test'
    fill_in 'Description', :with => 'Test'
    click_button 'Create Group'
    expect(page).to have_content "Game title can't be blank"
  end
end
