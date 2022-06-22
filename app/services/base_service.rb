# frozen_string_literal: true

class BaseService
  include HTTParty
  BASE_URL = '/api/json/v1/1/'

  attr_accessor :url

  def initialize(url)
    @url = BASE_URL + url
  end

  def request(method: :get)
    Integrations::MealApi::Base.new(url).request(method)
  end
end
