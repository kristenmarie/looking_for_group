require 'rails_helper'

describe 'creating a new user account' do
  it 'will create a new user account' do
   visit root_path
   click_link 'Sign up'
   fill_in 'Username', :with => 'test'
   fill_in 'Email', :with => 'test@test.com'
   fill_in 'Password', :with => '123456'
   fill_in 'Password confirmation', :with => '123456'
   click_button 'Sign up'
   expect(page).to have_content 'test'
 end

 it 'will show error if field is left blank' do
    visit root_path
    click_link 'Sign up'
    fill_in 'Email', :with => 'test@test.com'
    fill_in 'Password', :with => '123456'
    fill_in 'Password confirmation', :with => '123456'
    click_button 'Sign up'
    expect(page).to have_content "Username can't be blank"
  end
end
