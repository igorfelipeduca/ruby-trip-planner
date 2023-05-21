require 'sinatra'
require './lib/travel'

get '/' do
  'Hello!'
end

post '/plan' do
  request_payload = JSON.parse(request.body.read)

  response = Travel.new
    .with_dates(request_payload['start_date'], request_payload['end_date'])
    .from(request_payload['city_origin'])
    .to(request_payload['city_destination'])
    .plan!

  content_type :json
  response.to_json
end
