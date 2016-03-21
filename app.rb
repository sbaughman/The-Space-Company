require 'sinatra'


get '/?:name?' do
  @name = params["name"]
  erb :hipster
end

get '/ipsum/:type' do
  types = ['hipster', 'samuel', 'bacon']
  if types.include? params['type']
    erb params['type'].to_sym
  else
    erb :hipster
  end
end
