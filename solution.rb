require 'sinatra'

get '/' do
  request.env["HTTP_PERMISO"]
  if request.env["HTTP_PERMISO"]=="soy-un-token-secreto"
    "Si lo logramos!"
  else
    "Sin Permiso"

  end
end