# MelioPlatformApiClient::FundingSourcesApi

All URIs are relative to *https://api.melio.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_funding_sources_funding_source_id**](FundingSourcesApi.md#delete_funding_sources_funding_source_id) | **DELETE** /funding-sources/{fundingSourceId} | Delete a Funding Source |
| [**get_funding_sources**](FundingSourcesApi.md#get_funding_sources) | **GET** /funding-sources | Get all Funding Sources |
| [**get_funding_sources_funding_source_id**](FundingSourcesApi.md#get_funding_sources_funding_source_id) | **GET** /funding-sources/{fundingSourceId} | Retrieve a Funding Source |
| [**post_funding_sources**](FundingSourcesApi.md#post_funding_sources) | **POST** /funding-sources | Create a Funding Source |


## delete_funding_sources_funding_source_id

> <DeletedResponse> delete_funding_sources_funding_source_id(funding_source_id, idempotency_key, opts)

Delete a Funding Source

Remove a Funding Source from the Account

### Examples

```ruby
require 'time'
require 'melio-platform-api-client'
# setup authorization
MelioPlatformApiClient.configure do |config|
  # Configure Bearer authorization: AccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = MelioPlatformApiClient::FundingSourcesApi.new
funding_source_id = 'funding_source_id_example' # String | 
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Delete a Funding Source
  result = api_instance.delete_funding_sources_funding_source_id(funding_source_id, idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FundingSourcesApi->delete_funding_sources_funding_source_id: #{e}"
end
```

#### Using the delete_funding_sources_funding_source_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedResponse>, Integer, Hash)> delete_funding_sources_funding_source_id_with_http_info(funding_source_id, idempotency_key, opts)

```ruby
begin
  # Delete a Funding Source
  data, status_code, headers = api_instance.delete_funding_sources_funding_source_id_with_http_info(funding_source_id, idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FundingSourcesApi->delete_funding_sources_funding_source_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **funding_source_id** | **String** |  |  |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**DeletedResponse**](DeletedResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_funding_sources

> <GetFundingSourcesResponse> get_funding_sources(opts)

Get all Funding Sources

Retrieve the Funding Sources of an Account

### Examples

```ruby
require 'time'
require 'melio-platform-api-client'
# setup authorization
MelioPlatformApiClient.configure do |config|
  # Configure Bearer authorization: AccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = MelioPlatformApiClient::FundingSourcesApi.new
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Get all Funding Sources
  result = api_instance.get_funding_sources(opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FundingSourcesApi->get_funding_sources: #{e}"
end
```

#### Using the get_funding_sources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFundingSourcesResponse>, Integer, Hash)> get_funding_sources_with_http_info(opts)

```ruby
begin
  # Get all Funding Sources
  data, status_code, headers = api_instance.get_funding_sources_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFundingSourcesResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FundingSourcesApi->get_funding_sources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**GetFundingSourcesResponse**](GetFundingSourcesResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_funding_sources_funding_source_id

> <GetFundingSourcesFundingSourceIdResponse> get_funding_sources_funding_source_id(funding_source_id, opts)

Retrieve a Funding Source

Retrieve details about a specific Funding Source

### Examples

```ruby
require 'time'
require 'melio-platform-api-client'
# setup authorization
MelioPlatformApiClient.configure do |config|
  # Configure Bearer authorization: AccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = MelioPlatformApiClient::FundingSourcesApi.new
funding_source_id = 'funding_source_id_example' # String | 
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Retrieve a Funding Source
  result = api_instance.get_funding_sources_funding_source_id(funding_source_id, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FundingSourcesApi->get_funding_sources_funding_source_id: #{e}"
end
```

#### Using the get_funding_sources_funding_source_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFundingSourcesFundingSourceIdResponse>, Integer, Hash)> get_funding_sources_funding_source_id_with_http_info(funding_source_id, opts)

```ruby
begin
  # Retrieve a Funding Source
  data, status_code, headers = api_instance.get_funding_sources_funding_source_id_with_http_info(funding_source_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFundingSourcesFundingSourceIdResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FundingSourcesApi->get_funding_sources_funding_source_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **funding_source_id** | **String** |  |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**GetFundingSourcesFundingSourceIdResponse**](GetFundingSourcesFundingSourceIdResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_funding_sources

> <PostFundingSourcesResponse> post_funding_sources(idempotency_key, opts)

Create a Funding Source

Create a new Funding Source for the Account.  The `type` field determines the contents of the `details` field, according to the following mapping: * `bank-account` => `BankAccount` * `plaid` => `PlaidDetails` * `card` => `Card`

### Examples

```ruby
require 'time'
require 'melio-platform-api-client'
# setup authorization
MelioPlatformApiClient.configure do |config|
  # Configure Bearer authorization: AccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = MelioPlatformApiClient::FundingSourcesApi.new
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  post_funding_sources_request: MelioPlatformApiClient::PostFundingSourcesRequest.new({type: 'plaid', details: TODO}) # PostFundingSourcesRequest | 
}

begin
  # Create a Funding Source
  result = api_instance.post_funding_sources(idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FundingSourcesApi->post_funding_sources: #{e}"
end
```

#### Using the post_funding_sources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostFundingSourcesResponse>, Integer, Hash)> post_funding_sources_with_http_info(idempotency_key, opts)

```ruby
begin
  # Create a Funding Source
  data, status_code, headers = api_instance.post_funding_sources_with_http_info(idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostFundingSourcesResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FundingSourcesApi->post_funding_sources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **post_funding_sources_request** | [**PostFundingSourcesRequest**](PostFundingSourcesRequest.md) |  | [optional] |

### Return type

[**PostFundingSourcesResponse**](PostFundingSourcesResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

