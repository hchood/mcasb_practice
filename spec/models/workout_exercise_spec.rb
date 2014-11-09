require 'rails_helper'

RSpec.describe WorkoutExercise, :type => :model do
  let!(:workout_exercise) { FactoryGirl.create(:workout_exercise) }

  it { should validate_presence_of :exercise }
  it { should validate_presence_of :exercise_number }
  it { should validate_uniqueness_of(:exercise_number).scoped_to(:workout_id) }

  it { should belong_to :workout }
  it { should belong_to :exercise }
end
