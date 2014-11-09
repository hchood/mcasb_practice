require 'rails_helper'

RSpec.describe Workout, :type => :model do
  let!(:workout) { FactoryGirl.create(:workout) }

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }

  it { should have_many(:workout_exercises).dependent(:destroy) }
  it { should have_many :exercises }
end
