class Workout < ActiveRecord::Base
  validates :name,
    presence: true,
    uniqueness: true

  has_many :workout_exercises, dependent: :destroy
  has_many :exercises, through: :workout_exercises

  accepts_nested_attributes_for :workout_exercises, reject_if: :all_blank, allow_destroy: true
end
