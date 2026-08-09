import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://google.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://google.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.DefaultApi(api_client)
    q = 'OpenAPI Generator'

    try:
        # Search with a query
        api_response = api_instance.search(q)
        print("The response of DefaultApi->search:\n")
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DefaultApi->search: %s\n" % e)
        raise
