require 'swagger_helper'

describe 'Books API' do  
    fixtures :all

    path '/books' do
        get 'List all available books' do
            produces 'application/json'
            response '200', 'books listed' do 
                schema type: :array, items: {
                    type: :object,
                    properties: {
                            name: { type: :string },
                            author: { type: :string },
                        },
                    },
                    required: ["name"] 

                run_test!
            end
        end
    end
end