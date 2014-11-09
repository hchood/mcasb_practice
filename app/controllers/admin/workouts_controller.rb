class Admin::WorkoutsController < ApplicationController
  def new
    @workout = Workout.new
    @exercises = Exercise.all
    4.times { @workout.workout_exercises.build }
  end

  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      redirect_to root_path, notice: "Workout created."
    else
      render :new, notice: "Your workout could not be saved."
    end
  end

  private

  def workout_params_supplied
    params.require(:workout).permit(
      :name,
      :description,
      workout_exercises_attributes: [
        :id,
        :exercise_id,
        :duration_in_min,
        :_destroy
      ])
  end

  def workout_params
    new_params = workout_params_supplied

    new_params[:workout_exercises_attributes].delete_if {
      |index, exercise_params| blank?(exercise_params)
    }

    new_params[:workout_exercises_attributes].each_with_index do |exercise, index|
      exercise_params = exercise[1]
      new_params[:workout_exercises_attributes][index.to_s] = exercise_params.merge(exercise_number: index + 1)
    end

    new_params
  end

  def blank?(exercise_params)
    exercise_params[:exercise_id].blank? && exercise_params[:duration_in_min].blank?
  end
end
