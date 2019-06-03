require( 'sinatra' )
require( 'sinatra/contrib/all' )

get '/gallery/about' do
  "Hello World"
   erb( :about )
end
