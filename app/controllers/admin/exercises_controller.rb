class Admin::ExercisesController < ApplicationController
  before_filter :authorize_admin

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)

    if @exercise.save
      redirect_to new_admin_exercise_path, notice: 'Added exercise.'
    else
      flash.now[:notice] = 'Exercise could not be saved.'
      render 'new'
    end
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :description)
  end
end
