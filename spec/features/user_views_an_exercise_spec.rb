require 'rails_helper'

feature 'user views details of an exercise', %Q{
  As an authenticated user
  I want to view the details of an exercise
  So I can see which exercises I can complete
  } do

  # Acceptance Criteria:
  # * I must be signed in to view an exercise
  # * The exercise's name and description are displayed

  let!(:exercise) { FactoryGirl.create(:exercise) }

  scenario 'authenticated user can view an exercise' do
    user = FactoryGirl.create(:user)
    sign_in_as(user)

    click_on 'Exercises'
    click_on exercise.name

    expect(page).to have_content exercise.name
    expect(page).to have_content exercise.description
  end

  scenario 'unauthenticated user cannot view an exercise' do
    visit exercise_path(exercise)

    expect(page).to have_content 'You need to sign in or sign up before continuing'
  end
end
