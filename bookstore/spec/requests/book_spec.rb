require 'swagger_helper'

describe 'Books API' do 
    path '/books' do
        get 'List all available books' do
            produces 'application/json'
            response '200', 'books listed' do
                schema oneOf: [
                    { type: :array },
                    { type: :object,
                        properties: {
                            name: { type: :string },
                            author: { type: :string },
                        },
                        required: ["name"]}
                ]

                run_test!
            end
        end
    end
end