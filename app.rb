require 'sinatra'
require 'json'

set :port, (ENV["PORT"] or 8000)
set :bind, '0.0.0.0'

=begin
@api {get} /sample/{message} hello world sample request
@apiName GetSample
@apiParam (Url) {String} message the message to return
@apiSuccess (Success_200) {String} data the hello world data
@apiSuccess (Success_200) {String} output what the user entered in the url
=end

get '/sample/:message' do
  content_type :json
  {
    data: "Hello World",
    output: params['message']
  }.to_json
end

