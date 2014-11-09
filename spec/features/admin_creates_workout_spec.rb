require 'rails_helper'

feature 'admin creates a workout', %Q{
    As an admin
    I want to create a workout
    So that users can complete them
  } do

  # Acceptance Criteria:

  # - I must be an admin to create a workout. If I am not an admin, I receive an error message.
  # - A workout must have a name and a description.
  # - The name of the workout must be unique.
  # - I can add multiple exercises to the workout.

  context 'authenticated admin' do
    let(:admin) { FactoryGirl.create(:user, role: 'admin') }
    let!(:exercises) { FactoryGirl.create_list(:exercise, 3) }
    let(:workout) { FactoryGirl.build(:workout) }

    it 'adds an exercise when required fields are provided' do
      prev_count = Workout.count

      sign_in_as(admin)
      visit new_admin_workout_path

      fill_in 'Name', with: workout.name
      fill_in 'Description', with: workout.description
      select exercises[0].name, from: 'workout[workout_exercises_attributes][0][exercise_id]'
      select exercises[1].name, from: 'workout[workout_exercises_attributes][1][exercise_id]'
      select exercises[2].name, from: 'workout[workout_exercises_attributes][2][exercise_id]'
      click_on 'Create Workout'

      expect(Workout.count).to eq prev_count + 1
      expect(Workout.first.exercises).to eq exercises
      expect(page).to have_content 'Workout created.'
    end

    it 'displays an error message when required fields are blank' do
      sign_in_as(admin)
      visit new_admin_workout_path

      click_on 'Create Workout'

      within '.workout_name' do
        expect(page).to have_content "can't be blank"
      end
    end

    it 'displays an error message when name has already been taken' do
      existing_workout = FactoryGirl.create(:workout)

      sign_in_as(admin)
      visit new_admin_workout_path

      fill_in 'Name', with: existing_workout.name
      fill_in 'Description', with: workout.description
      click_on 'Create Workout'

      expect(page).to have_content 'has already been taken'
    end
  end

  context 'authenticated non-admin' do
    it 'returns a page not found message' do
      user = FactoryGirl.create(:user)

      sign_in_as(user)
      visit new_admin_workout_path

      expect(page).to have_content "The page you were looking for doesn't exist."
    end
  end
end
