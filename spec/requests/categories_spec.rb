require 'swagger_helper'

RSpec.describe 'categories', type: :request do

  path '/categories' do

    get('list categories') do
      tags 'Category'
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
