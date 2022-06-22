# frozen_string_literal: true

class MealsController < ApplicationController
  before_action :set_meal, only: [:show]

  def index
    @meals ||= MealService.new("filter.php?c=#{meals_param}").meals_by_category

    render json: @meals
  end

  def show
    render json: @meal
  end

  private

  def set_meal
    @meal ||= MealService.new("lookup.php?i=#{params[:id]}").meal_by_id
  end

  def meals_param
    params.require(:category)
  end
end
