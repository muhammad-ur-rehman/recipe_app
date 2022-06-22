# frozen_string_literal: true

class MealService < BaseService
  def initialize(path)
    super(path)
  end

  def meals_by_category
    response = request
    return [] unless response['meals'].present?

    Mapper::Bulk::MealMapper.new(response['meals']).meals
  end

  def meal_by_id
    response = request
    return [] unless response['meals'].present?

    Mapper::MealMapper.new(response['meals'].first).meal
  end
end
