# frozen_string_literal: true

module Mapper
  class MealMapper
    attr_accessor :raw_meal

    def initialize(raw_meal)
      @raw_meal = raw_meal
    end

    def meal
      {
        meal_id: raw_meal['idMeal'].to_i,
        name: raw_meal['strMeal'].downcase,
        thumbnail: raw_meal['strMealThumb'],
        alternate_drink: raw_meal['strDrinkAlternate'],
        instructions: raw_meal['strInstructions'],
        area: raw_meal['strArea'],
        tags: raw_meal['strTags'],
        youtube_url: raw_meal['strYoutube'],
        source_url: raw_meal['strSource'],
        image_source_url: raw_meal['strImageSource'],
        creative_commons_confirmed: raw_meal['strCreativeCommonsConfirmed'],
        modified_date: raw_meal['dateModified'],
        ingredients: ingredients
      }
    end

    private

    def ingredients
      meal_ingredients = []

      (1..20).map do |number|
        break unless raw_meal["strIngredient#{number}"].present?

        meal_ingredients.push({
                                name: raw_meal["strIngredient#{number}"],
                                quantity: raw_meal["strMeasure#{number}"]
                              })
      end
      meal_ingredients
    end
  end
end
