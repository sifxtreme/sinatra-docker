require 'sinatra'

#Bound to this address so that external hosts can access it, VERY IMPORTANT!
set :bind, '0.0.0.0'

set :logging, true

get '/' do
   'hellos world'
end