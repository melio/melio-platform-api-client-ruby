# MelioPlatformApiClient::AuthApi

All URIs are relative to *https://api.melio.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**post_auth_token**](AuthApi.md#post_auth_token) | **POST** /auth/token | Create an access token |


## post_auth_token

> <PostAuthResponse> post_auth_token(idempotency_key, opts)

Create an access token

Create an access token that is scoped to a specific Account, and that can be used for client-side API calls. This is used to perform operations that require the user's involvment, without exposing the Partner's secret API key.

### Examples

```ruby
require 'time'
require 'melio-platform-api-client'
# setup authorization
MelioPlatformApiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = MelioPlatformApiClient::AuthApi.new
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Create an access token
  result = api_instance.post_auth_token(idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling AuthApi->post_auth_token: #{e}"
end
```

#### Using the post_auth_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAuthResponse>, Integer, Hash)> post_auth_token_with_http_info(idempotency_key, opts)

```ruby
begin
  # Create an access token
  data, status_code, headers = api_instance.post_auth_token_with_http_info(idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAuthResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling AuthApi->post_auth_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**PostAuthResponse**](PostAuthResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

