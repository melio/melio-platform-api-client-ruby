# MelioPlatformApiClient::WebhooksApi

All URIs are relative to *https://api.melio.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_webhooks_checkouts**](WebhooksApi.md#delete_webhooks_checkouts) | **DELETE** /webhooks/checkouts | Delete the Webhook for Checkouts |
| [**delete_webhooks_payments**](WebhooksApi.md#delete_webhooks_payments) | **DELETE** /webhooks/payments | Delete the Webhook for Payments |
| [**get_webhooks**](WebhooksApi.md#get_webhooks) | **GET** /webhooks | Retrieve all Webhooks |
| [**get_webhooks_checkouts**](WebhooksApi.md#get_webhooks_checkouts) | **GET** /webhooks/checkouts | Retrieve Status of Webhook for Checkouts |
| [**get_webhooks_payments**](WebhooksApi.md#get_webhooks_payments) | **GET** /webhooks/payments | Retrieve Status of Webhook for Payments |
| [**post_webhooks_checkouts**](WebhooksApi.md#post_webhooks_checkouts) | **POST** /webhooks/checkouts | Register a Webhook for Checkouts |
| [**post_webhooks_payments**](WebhooksApi.md#post_webhooks_payments) | **POST** /webhooks/payments | Register a Webhook for Payments |


## delete_webhooks_checkouts

> <DeletedResponse> delete_webhooks_checkouts(idempotency_key)

Delete the Webhook for Checkouts

Disable the URL registered for receiving Checkout-related webhooks

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

api_instance = MelioPlatformApiClient::WebhooksApi.new
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key

begin
  # Delete the Webhook for Checkouts
  result = api_instance.delete_webhooks_checkouts(idempotency_key)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhooks_checkouts: #{e}"
end
```

#### Using the delete_webhooks_checkouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedResponse>, Integer, Hash)> delete_webhooks_checkouts_with_http_info(idempotency_key)

```ruby
begin
  # Delete the Webhook for Checkouts
  data, status_code, headers = api_instance.delete_webhooks_checkouts_with_http_info(idempotency_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhooks_checkouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique idempotency key |  |

### Return type

[**DeletedResponse**](DeletedResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_webhooks_payments

> <DeletedResponse> delete_webhooks_payments(idempotency_key)

Delete the Webhook for Payments

Disable the URL registered for receiving Payments-related webhooks

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

api_instance = MelioPlatformApiClient::WebhooksApi.new
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key

begin
  # Delete the Webhook for Payments
  result = api_instance.delete_webhooks_payments(idempotency_key)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhooks_payments: #{e}"
end
```

#### Using the delete_webhooks_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedResponse>, Integer, Hash)> delete_webhooks_payments_with_http_info(idempotency_key)

```ruby
begin
  # Delete the Webhook for Payments
  data, status_code, headers = api_instance.delete_webhooks_payments_with_http_info(idempotency_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhooks_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique idempotency key |  |

### Return type

[**DeletedResponse**](DeletedResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhooks

> <GetWebhooksResponse> get_webhooks

Retrieve all Webhooks

Retrieve a list of all webhooks configured for the Account

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

api_instance = MelioPlatformApiClient::WebhooksApi.new

begin
  # Retrieve all Webhooks
  result = api_instance.get_webhooks
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks: #{e}"
end
```

#### Using the get_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWebhooksResponse>, Integer, Hash)> get_webhooks_with_http_info

```ruby
begin
  # Retrieve all Webhooks
  data, status_code, headers = api_instance.get_webhooks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWebhooksResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetWebhooksResponse**](GetWebhooksResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhooks_checkouts

> <GetWebhooksCheckoutsResponse> get_webhooks_checkouts

Retrieve Status of Webhook for Checkouts

Return the current URL registered for receiving Checkout-related webhooks

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

api_instance = MelioPlatformApiClient::WebhooksApi.new

begin
  # Retrieve Status of Webhook for Checkouts
  result = api_instance.get_webhooks_checkouts
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks_checkouts: #{e}"
end
```

#### Using the get_webhooks_checkouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWebhooksCheckoutsResponse>, Integer, Hash)> get_webhooks_checkouts_with_http_info

```ruby
begin
  # Retrieve Status of Webhook for Checkouts
  data, status_code, headers = api_instance.get_webhooks_checkouts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWebhooksCheckoutsResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks_checkouts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetWebhooksCheckoutsResponse**](GetWebhooksCheckoutsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhooks_payments

> <GetWebhooksPaymentsResponse> get_webhooks_payments

Retrieve Status of Webhook for Payments

Return the current URL registered for receiving Payments-related webhooks

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

api_instance = MelioPlatformApiClient::WebhooksApi.new

begin
  # Retrieve Status of Webhook for Payments
  result = api_instance.get_webhooks_payments
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks_payments: #{e}"
end
```

#### Using the get_webhooks_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWebhooksPaymentsResponse>, Integer, Hash)> get_webhooks_payments_with_http_info

```ruby
begin
  # Retrieve Status of Webhook for Payments
  data, status_code, headers = api_instance.get_webhooks_payments_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWebhooksPaymentsResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks_payments_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetWebhooksPaymentsResponse**](GetWebhooksPaymentsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_webhooks_checkouts

> <PostWebhooksCheckoutsResponse> post_webhooks_checkouts(idempotency_key, opts)

Register a Webhook for Checkouts

Update the URL registered for receiving Checkout-related webhooks

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

api_instance = MelioPlatformApiClient::WebhooksApi.new
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  post_webhooks_checkouts_request: MelioPlatformApiClient::PostWebhooksCheckoutsRequest.new({url: 'url_example'}) # PostWebhooksCheckoutsRequest | 
}

begin
  # Register a Webhook for Checkouts
  result = api_instance.post_webhooks_checkouts(idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling WebhooksApi->post_webhooks_checkouts: #{e}"
end
```

#### Using the post_webhooks_checkouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostWebhooksCheckoutsResponse>, Integer, Hash)> post_webhooks_checkouts_with_http_info(idempotency_key, opts)

```ruby
begin
  # Register a Webhook for Checkouts
  data, status_code, headers = api_instance.post_webhooks_checkouts_with_http_info(idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostWebhooksCheckoutsResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling WebhooksApi->post_webhooks_checkouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **post_webhooks_checkouts_request** | [**PostWebhooksCheckoutsRequest**](PostWebhooksCheckoutsRequest.md) |  | [optional] |

### Return type

[**PostWebhooksCheckoutsResponse**](PostWebhooksCheckoutsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_webhooks_payments

> <PostWebhooksPaymentsResponse> post_webhooks_payments(idempotency_key, opts)

Register a Webhook for Payments

Update the URL registered for receiving Payments-related webhooks

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

api_instance = MelioPlatformApiClient::WebhooksApi.new
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  post_webhooks_payments_request: MelioPlatformApiClient::PostWebhooksPaymentsRequest.new({url: 'url_example'}) # PostWebhooksPaymentsRequest | 
}

begin
  # Register a Webhook for Payments
  result = api_instance.post_webhooks_payments(idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling WebhooksApi->post_webhooks_payments: #{e}"
end
```

#### Using the post_webhooks_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostWebhooksPaymentsResponse>, Integer, Hash)> post_webhooks_payments_with_http_info(idempotency_key, opts)

```ruby
begin
  # Register a Webhook for Payments
  data, status_code, headers = api_instance.post_webhooks_payments_with_http_info(idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostWebhooksPaymentsResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling WebhooksApi->post_webhooks_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **post_webhooks_payments_request** | [**PostWebhooksPaymentsRequest**](PostWebhooksPaymentsRequest.md) |  | [optional] |

### Return type

[**PostWebhooksPaymentsResponse**](PostWebhooksPaymentsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

