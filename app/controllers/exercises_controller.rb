class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.order(:name).page params[:page]
  end

  def show
    @exercise = Exercise.find(params[:id])
  end
end
