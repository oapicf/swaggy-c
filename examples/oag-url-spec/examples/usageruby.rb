# Load the gem
require 'openapi_client'

api_instance = OpenapiClient::DefaultApi.new
q = 'OpenAPI Generator'

begin
  # Search with a query
  result = api_instance.search(q)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->search: #{e}"
  raise
end
