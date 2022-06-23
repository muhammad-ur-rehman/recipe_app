require 'swagger_helper'

RSpec.describe 'meals', type: :request do

  path '/meals?category={category}' do
    parameter name: 'category', in: :path, type: :string, description: 'category name to be searched'
    get('list meals') do
    tags 'Meal'

      response(200, 'successful') do

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/meals/{id}' do

    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show meal') do
      tags 'Meal'
      response(200, 'successful') do

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
