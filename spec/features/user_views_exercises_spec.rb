require 'rails_helper'

feature 'user views list of exercises', %Q{
  As a user
  I want to view a list of exercises
  So I can see which exercises I can complete
  } do

  # Acceptance Criteria:
  # * I must be signed in to view a list of exercises

  let!(:exercises) { FactoryGirl.create_list(:exercise, 3) }

  scenario 'authenticated user can view exercises' do
    user = FactoryGirl.create(:user)
    sign_in_as(user)

    click_on 'Exercises'

    exercises.each do |exercise|
      expect(page).to have_content exercise.name
      expect(page).to have_content exercise.description
    end
  end

  scenario 'unauthenticated user cannot view exercises' do
    visit exercises_path

    expect(page).to have_content 'You need to sign in or sign up before continuing'
  end
end
