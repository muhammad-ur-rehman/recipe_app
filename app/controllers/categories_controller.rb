# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    @categories ||= CategoryService.new.create_categories

    render json: @categories.to_json
  end
end
