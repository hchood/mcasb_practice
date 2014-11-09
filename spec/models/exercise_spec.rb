require 'rails_helper'

RSpec.describe Exercise, :type => :model do
  let!(:exercise) { FactoryGirl.create(:exercise) }

  it { should validate_presence_of :name }
  it { should validate_presence_of :description }

  it { should validate_uniqueness_of :name }

  it { should have_many(:workout_exercises).dependent(:destroy) }
  it { should have_many :workouts }
end
