require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/manager_controller')
require_relative('controllers/visitor_controller')
require_relative('controllers/about_controller')

get '/gallery/' do
   erb( :index )
end
