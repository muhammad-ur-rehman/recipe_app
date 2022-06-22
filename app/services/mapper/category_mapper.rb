# frozen_string_literal: true

module Mapper
  class CategoryMapper
    attr_accessor :categories

    def initialize(categories)
      @categories = categories
    end

    def category
      categories.map do |category|
        {
          name: category['strCategory'].downcase,
          thumbnail: category['strCategoryThumb'],
          description: category['strCategoryDescription'].downcase
        }
      end
    end
  end
end
