require 'openapi_client'

describe 'QueryClient' do
  before do
  end

  after do
  end

  describe 'test google query' do
    it 'should get search results' do
      api_instance = OpenapiClient::DefaultApi.new
      begin
        result = api_instance.search('OpenAPI Generator')
        expect(result).not_to be_nil
        expect(result).to be_a(String)
        expect(result.length).to be > 0
        puts "search results: #{result}"
      rescue OpenapiClient::ApiError => e
        puts "Error when calling DefaultApi->search: #{e}"
        fail
      end
    end
  end

end
