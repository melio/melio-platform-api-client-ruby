# MelioPlatformApiClient::MerchantsApi

All URIs are relative to *https://api.melio.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**post_merchants**](MerchantsApi.md#post_merchants) | **POST** /merchants | Create a Merchant |


## post_merchants

> <PostMerchantsResponse> post_merchants(idempotency_key, opts)

Create a Merchant

Create a new Merchant for the Account

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

api_instance = MelioPlatformApiClient::MerchantsApi.new
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  post_merchants_request: MelioPlatformApiClient::PostMerchantsRequest.new # PostMerchantsRequest | 
}

begin
  # Create a Merchant
  result = api_instance.post_merchants(idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling MerchantsApi->post_merchants: #{e}"
end
```

#### Using the post_merchants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostMerchantsResponse>, Integer, Hash)> post_merchants_with_http_info(idempotency_key, opts)

```ruby
begin
  # Create a Merchant
  data, status_code, headers = api_instance.post_merchants_with_http_info(idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostMerchantsResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling MerchantsApi->post_merchants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **post_merchants_request** | [**PostMerchantsRequest**](PostMerchantsRequest.md) |  | [optional] |

### Return type

[**PostMerchantsResponse**](PostMerchantsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

