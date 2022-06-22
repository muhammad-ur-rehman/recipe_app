# frozen_string_literal: true

module Integrations
  module MealApi
    class Base
      include HTTParty
      base_uri 'themealdb.com'

      def initialize(url)
        @url = url
      end

      def request(method = 'get')
        self.class.send(method, @url)
      end
    end
  end
end
