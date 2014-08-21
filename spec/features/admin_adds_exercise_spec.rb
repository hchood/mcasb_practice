require 'rails_helper'

feature 'admin adds an exercise', %Q{
    As an admin
    I want to add an exercise
    So that I users can complete the exercises
  } do

  # Acceptance Criteria:

  # - I must be an admin to add an exercise. If I am not an admin, an error is thrown.
  # - An exercise must have a name and a description.
  # - The name of the exercise must be unique.

  context 'authenticated admin' do
    let(:admin) { FactoryGirl.create(:user, role: 'admin') }
    let(:exercise) { FactoryGirl.build(:exercise) }

    it 'adds an exercise when required fields are provided' do
      prev_count = Exercise.count

      sign_in_as(admin)
      visit new_admin_exercise_path

      fill_in 'Name', with: exercise.name
      fill_in 'Description', with: exercise.description
      click_on 'Submit'

      expect(Exercise.count).to eq prev_count + 1
      expect(page).to have_content 'Added exercise.'
    end

    it 'displays an error message when required fields are blank'

    it 'displays an error message when name has already been taken'
  end

  context 'authenticated non-admin' do
    it 'returns a page not found message'
  end
end
