class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.order(:name).page params[:page]
  end
end
