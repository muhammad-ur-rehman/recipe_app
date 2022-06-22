module Mapper
  module Bulk
    class MealMapper
      attr_accessor :raw_meals

      def initialize(raw_meals)
        @raw_meals = raw_meals
      end

      def meals
        raw_meals.map do |meal|
          {
            meal_id: meal['idMeal'].to_i,
            name: meal['strMeal'].capitalize,
            thumbnail: meal['strMealThumb']
          }
        end
      end
    end
  end
end
