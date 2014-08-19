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

    it 'adds an exercise when required fields are provided' do

    end

    it 'displays an error message when required fields are blank'

    it 'displays an error message when name has already been taken'
  end

  context 'authenticated non-admin' do
    it 'returns a page not found message'
  end
end
