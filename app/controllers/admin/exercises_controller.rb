class Admin::ExercisesController < ApplicationController
  def new
    @exercise = Exercise.new
  end
end
