require 'grape'
require 'rack/cors'
require './lib/printing'

use Rack::Cors do
    allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :post]
    end
end

puts "Starting up RestfulPrinting, routes are: "
Printing::API::routes.each do |rt|
    puts ' * ' + rt.description + ':'
    puts '   * ' + rt.request_method + ' ' + rt.path
    puts
end
run Printing::API
