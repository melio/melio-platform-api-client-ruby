# MelioPlatformApiClient::PaymentIntentsApi

All URIs are relative to *https://api.melio.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_payment_intents**](PaymentIntentsApi.md#get_payment_intents) | **GET** /payment-intents | Retrieve all Payment Intents |
| [**get_payment_intents_payment_intent_id**](PaymentIntentsApi.md#get_payment_intents_payment_intent_id) | **GET** /payment-intents/{paymentIntentId} | Retrieve a Payment Intent |
| [**patch_payment_intents_payment_intent_id**](PaymentIntentsApi.md#patch_payment_intents_payment_intent_id) | **PATCH** /payment-intents/{paymentIntentId} | Update a Payment Intent |
| [**post_payment_intents**](PaymentIntentsApi.md#post_payment_intents) | **POST** /payment-intents | Create a Payment Intent |
| [**post_payment_intents_bulk**](PaymentIntentsApi.md#post_payment_intents_bulk) | **POST** /payment-intents/bulk | Create multiple Payment Intents |
| [**post_payment_intents_payment_intent_id_confirm**](PaymentIntentsApi.md#post_payment_intents_payment_intent_id_confirm) | **POST** /payment-intents/{paymentIntentId}/confirm | Confirm a Payment Intent |


## get_payment_intents

> <GetPaymentIntentsResponse> get_payment_intents(opts)

Retrieve all Payment Intents

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

api_instance = MelioPlatformApiClient::PaymentIntentsApi.new
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Retrieve all Payment Intents
  result = api_instance.get_payment_intents(opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentIntentsApi->get_payment_intents: #{e}"
end
```

#### Using the get_payment_intents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPaymentIntentsResponse>, Integer, Hash)> get_payment_intents_with_http_info(opts)

```ruby
begin
  # Retrieve all Payment Intents
  data, status_code, headers = api_instance.get_payment_intents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPaymentIntentsResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentIntentsApi->get_payment_intents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**GetPaymentIntentsResponse**](GetPaymentIntentsResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_intents_payment_intent_id

> <GetPaymentIntentsPaymentIntentIdResponse> get_payment_intents_payment_intent_id(payment_intent_id, opts)

Retrieve a Payment Intent

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

api_instance = MelioPlatformApiClient::PaymentIntentsApi.new
payment_intent_id = 'payment_intent_id_example' # String | 
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Retrieve a Payment Intent
  result = api_instance.get_payment_intents_payment_intent_id(payment_intent_id, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentIntentsApi->get_payment_intents_payment_intent_id: #{e}"
end
```

#### Using the get_payment_intents_payment_intent_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPaymentIntentsPaymentIntentIdResponse>, Integer, Hash)> get_payment_intents_payment_intent_id_with_http_info(payment_intent_id, opts)

```ruby
begin
  # Retrieve a Payment Intent
  data, status_code, headers = api_instance.get_payment_intents_payment_intent_id_with_http_info(payment_intent_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPaymentIntentsPaymentIntentIdResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentIntentsApi->get_payment_intents_payment_intent_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_intent_id** | **String** |  |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**GetPaymentIntentsPaymentIntentIdResponse**](GetPaymentIntentsPaymentIntentIdResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_payment_intents_payment_intent_id

> <PatchPaymentIntentsPaymentIntentIdResponse> patch_payment_intents_payment_intent_id(payment_intent_id, idempotency_key, opts)

Update a Payment Intent

Update an existing Payment Intent.  The request's body can be partial, and only provided fields will be overwritten. Set a field to `null` in order to remove its contents.

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

api_instance = MelioPlatformApiClient::PaymentIntentsApi.new
payment_intent_id = 'payment_intent_id_example' # String | 
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  patch_payment_intents_payment_intent_id_request: MelioPlatformApiClient::PatchPaymentIntentsPaymentIntentIdRequest.new # PatchPaymentIntentsPaymentIntentIdRequest | 
}

begin
  # Update a Payment Intent
  result = api_instance.patch_payment_intents_payment_intent_id(payment_intent_id, idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentIntentsApi->patch_payment_intents_payment_intent_id: #{e}"
end
```

#### Using the patch_payment_intents_payment_intent_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PatchPaymentIntentsPaymentIntentIdResponse>, Integer, Hash)> patch_payment_intents_payment_intent_id_with_http_info(payment_intent_id, idempotency_key, opts)

```ruby
begin
  # Update a Payment Intent
  data, status_code, headers = api_instance.patch_payment_intents_payment_intent_id_with_http_info(payment_intent_id, idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PatchPaymentIntentsPaymentIntentIdResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentIntentsApi->patch_payment_intents_payment_intent_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_intent_id** | **String** |  |  |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **patch_payment_intents_payment_intent_id_request** | [**PatchPaymentIntentsPaymentIntentIdRequest**](PatchPaymentIntentsPaymentIntentIdRequest.md) |  | [optional] |

### Return type

[**PatchPaymentIntentsPaymentIntentIdResponse**](PatchPaymentIntentsPaymentIntentIdResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_payment_intents

> <PostPaymentIntentsResponse> post_payment_intents(idempotency_key, opts)

Create a Payment Intent

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

api_instance = MelioPlatformApiClient::PaymentIntentsApi.new
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  post_payment_intents_request: MelioPlatformApiClient::PostPaymentIntentsRequest.new({amount_to_pay: 37, bill_info: MelioPlatformApiClient::PostPaymentIntentsRequestBillInfo.new({amount: 37, currency: MelioPlatformApiClient::Currency::USD, invoice: MelioPlatformApiClient::Invoice.new({number: 'number_example'}), vendor_id: 'vendor_id_example'})}) # PostPaymentIntentsRequest | 
}

begin
  # Create a Payment Intent
  result = api_instance.post_payment_intents(idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentIntentsApi->post_payment_intents: #{e}"
end
```

#### Using the post_payment_intents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostPaymentIntentsResponse>, Integer, Hash)> post_payment_intents_with_http_info(idempotency_key, opts)

```ruby
begin
  # Create a Payment Intent
  data, status_code, headers = api_instance.post_payment_intents_with_http_info(idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostPaymentIntentsResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentIntentsApi->post_payment_intents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **post_payment_intents_request** | [**PostPaymentIntentsRequest**](PostPaymentIntentsRequest.md) |  | [optional] |

### Return type

[**PostPaymentIntentsResponse**](PostPaymentIntentsResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_payment_intents_bulk

> <PostPaymentIntentsBulkResponse> post_payment_intents_bulk(idempotency_key, opts)

Create multiple Payment Intents

Create multiple Payment Intents based on a provided list.

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

api_instance = MelioPlatformApiClient::PaymentIntentsApi.new
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  post_payment_intents_bulk_request: MelioPlatformApiClient::PostPaymentIntentsBulkRequest.new({payment_intents: [MelioPlatformApiClient::PostPaymentIntentsRequest.new({amount_to_pay: 37, bill_info: MelioPlatformApiClient::PostPaymentIntentsRequestBillInfo.new({amount: 37, currency: MelioPlatformApiClient::Currency::USD, invoice: MelioPlatformApiClient::Invoice.new({number: 'number_example'}), vendor_id: 'vendor_id_example'})})]}) # PostPaymentIntentsBulkRequest | 
}

begin
  # Create multiple Payment Intents
  result = api_instance.post_payment_intents_bulk(idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentIntentsApi->post_payment_intents_bulk: #{e}"
end
```

#### Using the post_payment_intents_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostPaymentIntentsBulkResponse>, Integer, Hash)> post_payment_intents_bulk_with_http_info(idempotency_key, opts)

```ruby
begin
  # Create multiple Payment Intents
  data, status_code, headers = api_instance.post_payment_intents_bulk_with_http_info(idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostPaymentIntentsBulkResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentIntentsApi->post_payment_intents_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **post_payment_intents_bulk_request** | [**PostPaymentIntentsBulkRequest**](PostPaymentIntentsBulkRequest.md) |  | [optional] |

### Return type

[**PostPaymentIntentsBulkResponse**](PostPaymentIntentsBulkResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_payment_intents_payment_intent_id_confirm

> <PostPaymentIntentsPaymentIntentIdPaymentResponse> post_payment_intents_payment_intent_id_confirm(payment_intent_id, idempotency_key, opts)

Confirm a Payment Intent

Confirm this Payment Intent and produce a Payment based on the current configuration.

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

api_instance = MelioPlatformApiClient::PaymentIntentsApi.new
payment_intent_id = 'payment_intent_id_example' # String | 
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Confirm a Payment Intent
  result = api_instance.post_payment_intents_payment_intent_id_confirm(payment_intent_id, idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentIntentsApi->post_payment_intents_payment_intent_id_confirm: #{e}"
end
```

#### Using the post_payment_intents_payment_intent_id_confirm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostPaymentIntentsPaymentIntentIdPaymentResponse>, Integer, Hash)> post_payment_intents_payment_intent_id_confirm_with_http_info(payment_intent_id, idempotency_key, opts)

```ruby
begin
  # Confirm a Payment Intent
  data, status_code, headers = api_instance.post_payment_intents_payment_intent_id_confirm_with_http_info(payment_intent_id, idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostPaymentIntentsPaymentIntentIdPaymentResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentIntentsApi->post_payment_intents_payment_intent_id_confirm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_intent_id** | **String** |  |  |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**PostPaymentIntentsPaymentIntentIdPaymentResponse**](PostPaymentIntentsPaymentIntentIdPaymentResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

