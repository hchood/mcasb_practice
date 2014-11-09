class Exercise < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  has_many :workout_exercises, dependent: :destroy
  has_many :workouts, through: :workout_exercises
end
