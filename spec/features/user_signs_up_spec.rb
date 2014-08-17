require 'rails_helper'

feature 'New user creates account', %Q{
    As a prospective user
    I want to register for the site
    So I can track my workouts
  } do

# Acceptance Criteria:
# - [ ] I can choose to log in via Facebook or provide my email address.  If I choose the latter:
# - [ ] I must provide an email address.
# - [ ] If my email address is already associated with an account, I receive an error message.
# - [ ] I must provide and verify my password.
# - [ ] If my passwords do not match, I receive an error message.
# - [ ] I must provide a username.
# - [ ] If the username I choose is already associated with an account, I receive an error message.
# - [ ] I must provide my first and last name.
# - [ ] If I do not provide all of the required fields, I receive an error message.

  before :each do
    @user =  FactoryGirl.build(:user)
    visit '/'
    click_on 'Sign Up'
  end

  scenario 'supplies all required, valid information' do
    prev_count = User.count

    fill_in 'user_first_name', with: @user.first_name
    fill_in 'user_last_name', with: @user.last_name
    fill_in 'user_email', with: @user.email
    fill_in 'user_username', with: @user.username
    fill_in 'user_password', with: @user.password
    fill_in 'user_password_confirmation', with: @user.password
    click_button 'Sign me up!'

    expect(page).to have_content "Welcome! You have signed up successfully."
    expect(page).to have_content 'Sign Out'

    expect(User.count).to eq prev_count + 1
  end

  scenario 'does not supply required information' do
    click_button 'Sign me up!'

    expect(page).to_not have_link 'Sign Out'
    expect(page).to have_button 'Sign me up!'
    expect(page).to have_content "can't be blank"
  end

  scenario 'email is already in use' do
    existing_user = FactoryGirl.create(:user)

    fill_in 'user_first_name', with: @user.first_name
    fill_in 'user_last_name', with: @user.last_name
    fill_in 'user_email', with: existing_user.email
    fill_in 'user_username', with: @user.username
    fill_in 'user_password', with: @user.password
    fill_in 'user_password_confirmation', with: @user.password_confirmation

    click_button 'Sign me up!'

    expect(page).to_not have_content "Welcome! You have signed up successfully."
    expect(page).to have_button 'Sign me up!'
    expect(page).to have_content 'has already been taken'
  end

  scenario 'username is already in use' do
    existing_user = FactoryGirl.create(:user)

    fill_in 'user_first_name', with: @user.first_name
    fill_in 'user_last_name', with: @user.last_name
    fill_in 'user_email', with: @user.email
    fill_in 'user_username', with: existing_user.username
    fill_in 'user_password', with: @user.password
    fill_in 'user_password_confirmation', with: @user.password_confirmation

    click_button 'Sign me up!'

    expect(page).to_not have_content "Welcome! You have signed up successfully."
    expect(page).to have_button 'Sign me up!'
    expect(page).to have_content 'has already been taken'
  end

  scenario 'password confirmation does not match password' do
    fill_in 'user_first_name', with: @user.first_name
    fill_in 'user_last_name', with: @user.last_name
    fill_in 'user_email', with: @user.email
    fill_in 'user_password', with: @user.password
    fill_in 'user_password_confirmation', with: 'wrong_password'

    click_button 'Sign me up!'

    expect(page).to_not have_content "Welcome! You have signed up successfully." # change this later
    expect(page).to have_button 'Sign me up!'
    expect(page).to have_content "doesn't match Password"
  end
end
