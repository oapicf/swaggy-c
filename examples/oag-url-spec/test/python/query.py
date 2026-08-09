import unittest
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint

class TestQuery(unittest.TestCase):

    def test_search(self):

      configuration = openapi_client.Configuration(
          host = "https://google.com"
      )

      with openapi_client.ApiClient(configuration) as api_client:

          api_instance = openapi_client.DefaultApi(api_client)

          try:
              api_response = api_instance.search('OpenAPI Generator')
              print("The response of DefaultApi->search:\n")
              pprint(api_response)
              search_results = api_response
              assert isinstance(search_results, str)
              assert len(search_results) > 0

          except ApiException as e:
              self.fail('Exception when calling DefaultApi->search: %s\n' % e)
