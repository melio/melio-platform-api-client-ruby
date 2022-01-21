# MelioPlatformApiClient::PaymentsApi

All URIs are relative to *https://api.melio.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_payments_payment_id**](PaymentsApi.md#delete_payments_payment_id) | **DELETE** /payments/{paymentId} | Delete a Payment |
| [**get_payments**](PaymentsApi.md#get_payments) | **GET** /payments | Retrieve all Payments of a PaymentIntent |
| [**get_payments_payment_id**](PaymentsApi.md#get_payments_payment_id) | **GET** /payments/{paymentId} | Retrieve a Payment |
| [**recover_payment_payment_id**](PaymentsApi.md#recover_payment_payment_id) | **POST** /payments/{paymentId}/recover | Recover a Payment |


## delete_payments_payment_id

> <DeletedResponse> delete_payments_payment_id(payment_id, opts)

Delete a Payment

Delete / cancel a Payment.

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

api_instance = MelioPlatformApiClient::PaymentsApi.new
payment_id = 'payment_id_example' # String | 
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Delete a Payment
  result = api_instance.delete_payments_payment_id(payment_id, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentsApi->delete_payments_payment_id: #{e}"
end
```

#### Using the delete_payments_payment_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedResponse>, Integer, Hash)> delete_payments_payment_id_with_http_info(payment_id, opts)

```ruby
begin
  # Delete a Payment
  data, status_code, headers = api_instance.delete_payments_payment_id_with_http_info(payment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentsApi->delete_payments_payment_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_id** | **String** |  |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**DeletedResponse**](DeletedResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payments

> <GetPaymentsResponse> get_payments(opts)

Retrieve all Payments of a PaymentIntent

Retrieve a list of all Payments of a PaymentIntent

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

api_instance = MelioPlatformApiClient::PaymentsApi.new
opts = {
  payment_intent_id: 'payment_intent_id_example' # String | 
}

begin
  # Retrieve all Payments of a PaymentIntent
  result = api_instance.get_payments(opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payments: #{e}"
end
```

#### Using the get_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPaymentsResponse>, Integer, Hash)> get_payments_with_http_info(opts)

```ruby
begin
  # Retrieve all Payments of a PaymentIntent
  data, status_code, headers = api_instance.get_payments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPaymentsResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_intent_id** | **String** |  | [optional] |

### Return type

[**GetPaymentsResponse**](GetPaymentsResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payments_payment_id

> <GetPaymentsPaymentIdResponse> get_payments_payment_id(payment_id, opts)

Retrieve a Payment

Retrieve a Payment using its ID.

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

api_instance = MelioPlatformApiClient::PaymentsApi.new
payment_id = 'payment_id_example' # String | 
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Retrieve a Payment
  result = api_instance.get_payments_payment_id(payment_id, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payments_payment_id: #{e}"
end
```

#### Using the get_payments_payment_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPaymentsPaymentIdResponse>, Integer, Hash)> get_payments_payment_id_with_http_info(payment_id, opts)

```ruby
begin
  # Retrieve a Payment
  data, status_code, headers = api_instance.get_payments_payment_id_with_http_info(payment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPaymentsPaymentIdResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payments_payment_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_id** | **String** |  |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**GetPaymentsPaymentIdResponse**](GetPaymentsPaymentIdResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## recover_payment_payment_id

> <RecoverPaymentResponse> recover_payment_payment_id(payment_id, idempotency_key, opts)

Recover a Payment

Recover a Payment by providing alternative details, hence restarting the Payment's lifecycle.

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

api_instance = MelioPlatformApiClient::PaymentsApi.new
payment_id = 'payment_id_example' # String | 
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  recover_payment_request: MelioPlatformApiClient::RecoverPaymentRequest.new # RecoverPaymentRequest | 
}

begin
  # Recover a Payment
  result = api_instance.recover_payment_payment_id(payment_id, idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentsApi->recover_payment_payment_id: #{e}"
end
```

#### Using the recover_payment_payment_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RecoverPaymentResponse>, Integer, Hash)> recover_payment_payment_id_with_http_info(payment_id, idempotency_key, opts)

```ruby
begin
  # Recover a Payment
  data, status_code, headers = api_instance.recover_payment_payment_id_with_http_info(payment_id, idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RecoverPaymentResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling PaymentsApi->recover_payment_payment_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_id** | **String** |  |  |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **recover_payment_request** | [**RecoverPaymentRequest**](RecoverPaymentRequest.md) |  | [optional] |

### Return type

[**RecoverPaymentResponse**](RecoverPaymentResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

