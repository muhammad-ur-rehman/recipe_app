# frozen_string_literal: true

class CategoryService < BaseService
  def initialize
    super('categories.php')
  end

  def create_categories
    response = request
    return [] unless response['categories'].present?

    Mapper::CategoryMapper.new(response['categories']).category
  end
end
