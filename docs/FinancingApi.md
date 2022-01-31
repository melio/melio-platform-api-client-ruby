# MelioPlatformApiClient::FinancingApi

All URIs are relative to *https://api.melio.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_financing_status**](FinancingApi.md#get_financing_status) | **GET** /financing | Retrieve an Account&#39;s financing status |
| [**post_financing**](FinancingApi.md#post_financing) | **POST** /financing | Apply for financing for an Account |
| [**post_financing_transaction**](FinancingApi.md#post_financing_transaction) | **POST** /financing/transaction | Request Transactional Financing |


## get_financing_status

> <GetFinancingResponse> get_financing_status(opts)

Retrieve an Account's financing status

Return the current status and balance of an account's financing qualification. The account may be in one of a few steps, defined by the response's `status` enum: - Undetermined (`undetermined` status): The account hasn't qualified yet, or the qualification has expired - Pending (`pending` status): The account has requested qualification, and awaiting for response. - Ineligible (`ineligible` status): The account is currently not eligible for financing. - Eligible (`eligible` status): The account is eligibile for financing. In this case, the additional `balance` field would be populated with the remaining credit balance.

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

api_instance = MelioPlatformApiClient::FinancingApi.new
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Retrieve an Account's financing status
  result = api_instance.get_financing_status(opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FinancingApi->get_financing_status: #{e}"
end
```

#### Using the get_financing_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFinancingResponse>, Integer, Hash)> get_financing_status_with_http_info(opts)

```ruby
begin
  # Retrieve an Account's financing status
  data, status_code, headers = api_instance.get_financing_status_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFinancingResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FinancingApi->get_financing_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**GetFinancingResponse**](GetFinancingResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_financing

> <PostFinancingResponse> post_financing(idempotency_key, opts)

Apply for financing for an Account

Accounts that wish to use financing must qualify for it. Call this method with values collected based on the result of `GET /financing`  This operation may take a long time (30 seconds).

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

api_instance = MelioPlatformApiClient::FinancingApi.new
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  post_financing_request: MelioPlatformApiClient::PostFinancingRequest.new # PostFinancingRequest | 
}

begin
  # Apply for financing for an Account
  result = api_instance.post_financing(idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FinancingApi->post_financing: #{e}"
end
```

#### Using the post_financing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostFinancingResponse>, Integer, Hash)> post_financing_with_http_info(idempotency_key, opts)

```ruby
begin
  # Apply for financing for an Account
  data, status_code, headers = api_instance.post_financing_with_http_info(idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostFinancingResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FinancingApi->post_financing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **post_financing_request** | [**PostFinancingRequest**](PostFinancingRequest.md) |  | [optional] |

### Return type

[**PostFinancingResponse**](PostFinancingResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_financing_transaction

> <PostFinancingTransactionalResponse> post_financing_transaction(idempotency_key, opts)

Request Transactional Financing

An eligible Account must request transactional approval for each financed transaction they intend to perform. The result of this operation returns a token that should be used when completing other payments through Melio.  This operation may take a long time (10 seconds).

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

api_instance = MelioPlatformApiClient::FinancingApi.new
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  post_financing_transactional_request: MelioPlatformApiClient::PostFinancingTransactionalRequest.new({amount: 150000, payee_account_id: 'payee_account_id_example'}) # PostFinancingTransactionalRequest | 
}

begin
  # Request Transactional Financing
  result = api_instance.post_financing_transaction(idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FinancingApi->post_financing_transaction: #{e}"
end
```

#### Using the post_financing_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostFinancingTransactionalResponse>, Integer, Hash)> post_financing_transaction_with_http_info(idempotency_key, opts)

```ruby
begin
  # Request Transactional Financing
  data, status_code, headers = api_instance.post_financing_transaction_with_http_info(idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostFinancingTransactionalResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FinancingApi->post_financing_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **post_financing_transactional_request** | [**PostFinancingTransactionalRequest**](PostFinancingTransactionalRequest.md) |  | [optional] |

### Return type

[**PostFinancingTransactionalResponse**](PostFinancingTransactionalResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

