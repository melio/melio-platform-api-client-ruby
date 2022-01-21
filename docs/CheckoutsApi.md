# MelioPlatformApiClient::CheckoutsApi

All URIs are relative to *https://api.melio.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_checkouts_checkout_id**](CheckoutsApi.md#get_checkouts_checkout_id) | **GET** /checkouts/{checkoutId} | Retrieve a Checkout |
| [**post_checkouts**](CheckoutsApi.md#post_checkouts) | **POST** /merchants/{merchantId}/checkouts | Create a Checkout |
| [**post_checkouts_checkout_id_capture**](CheckoutsApi.md#post_checkouts_checkout_id_capture) | **POST** /checkouts/{checkoutId}/capture | Capture a Checkout |
| [**post_checkouts_checkout_id_complete**](CheckoutsApi.md#post_checkouts_checkout_id_complete) | **POST** /checkouts/{checkoutId}/complete | Complete a Checkout |


## get_checkouts_checkout_id

> <GetCheckoutsCheckoutIdResponse> get_checkouts_checkout_id(checkout_id, opts)

Retrieve a Checkout

Get the status of a Checkout session

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

api_instance = MelioPlatformApiClient::CheckoutsApi.new
checkout_id = 'checkout_id_example' # String | 
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Retrieve a Checkout
  result = api_instance.get_checkouts_checkout_id(checkout_id, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling CheckoutsApi->get_checkouts_checkout_id: #{e}"
end
```

#### Using the get_checkouts_checkout_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCheckoutsCheckoutIdResponse>, Integer, Hash)> get_checkouts_checkout_id_with_http_info(checkout_id, opts)

```ruby
begin
  # Retrieve a Checkout
  data, status_code, headers = api_instance.get_checkouts_checkout_id_with_http_info(checkout_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCheckoutsCheckoutIdResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling CheckoutsApi->get_checkouts_checkout_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** |  |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**GetCheckoutsCheckoutIdResponse**](GetCheckoutsCheckoutIdResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_checkouts

> <PostCheckoutsResponse> post_checkouts(merchant_id, idempotency_key, opts)

Create a Checkout

Start a new Checkout session.  It is recommended to make use of all the different amount fields on the `Checkout` object: * `subtotal` - The total price of the list items, after applying item level discounts. * `grandTotal` - Equals `subtotal` minus coupons and plus taxes and shipping cost. * `outstandingBalance` - Actual amount to charge the buyer using Melio, equals `grandTotal` minus store credit used and gift certificates applied.

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

api_instance = MelioPlatformApiClient::CheckoutsApi.new
merchant_id = 'merchant_id_example' # String | 
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  post_checkouts_request: MelioPlatformApiClient::PostCheckoutsRequest.new({line_items: [MelioPlatformApiClient::LineItem.new({name: 'Yavor office chair', total_price: 37})], shipping_address: MelioPlatformApiClient::Address.new({line1: 'line1_example', city: 'city_example', state: 'state_example', postal_code: 'postal_code_example'}), billing_address: MelioPlatformApiClient::Address.new({line1: 'line1_example', city: 'city_example', state: 'state_example', postal_code: 'postal_code_example'}), tax_total: 37, subtotal: 37, grand_total: 37, outstanding_balance: 37, buyer: MelioPlatformApiClient::CheckoutAllOfBuyer.new({first_name: 'first_name_example', last_name: 'last_name_example'}), company_name: 'company_name_example'}) # PostCheckoutsRequest | 
}

begin
  # Create a Checkout
  result = api_instance.post_checkouts(merchant_id, idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling CheckoutsApi->post_checkouts: #{e}"
end
```

#### Using the post_checkouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostCheckoutsResponse>, Integer, Hash)> post_checkouts_with_http_info(merchant_id, idempotency_key, opts)

```ruby
begin
  # Create a Checkout
  data, status_code, headers = api_instance.post_checkouts_with_http_info(merchant_id, idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostCheckoutsResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling CheckoutsApi->post_checkouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_id** | **String** |  |  |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **post_checkouts_request** | [**PostCheckoutsRequest**](PostCheckoutsRequest.md) |  | [optional] |

### Return type

[**PostCheckoutsResponse**](PostCheckoutsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_checkouts_checkout_id_capture

> post_checkouts_checkout_id_capture(checkout_id, idempotency_key, opts)

Capture a Checkout

Mark that a Checkout session is finalized by the seller and the payment can be captured

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

api_instance = MelioPlatformApiClient::CheckoutsApi.new
checkout_id = 'checkout_id_example' # String | 
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  post_checkouts_checkout_id_capture_request: MelioPlatformApiClient::PostCheckoutsCheckoutIdCaptureRequest.new({merchant_order_reference: 'merchant_order_reference_example', invoice: MelioPlatformApiClient::PostCheckoutsCheckoutIdCaptureRequestInvoice.new({number: 'number_example'})}) # PostCheckoutsCheckoutIdCaptureRequest | 
}

begin
  # Capture a Checkout
  api_instance.post_checkouts_checkout_id_capture(checkout_id, idempotency_key, opts)
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling CheckoutsApi->post_checkouts_checkout_id_capture: #{e}"
end
```

#### Using the post_checkouts_checkout_id_capture_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_checkouts_checkout_id_capture_with_http_info(checkout_id, idempotency_key, opts)

```ruby
begin
  # Capture a Checkout
  data, status_code, headers = api_instance.post_checkouts_checkout_id_capture_with_http_info(checkout_id, idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling CheckoutsApi->post_checkouts_checkout_id_capture_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** |  |  |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **post_checkouts_checkout_id_capture_request** | [**PostCheckoutsCheckoutIdCaptureRequest**](PostCheckoutsCheckoutIdCaptureRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_checkouts_checkout_id_complete

> post_checkouts_checkout_id_complete(checkout_id, idempotency_key, opts)

Complete a Checkout

Complete a Checkout session for the buyer by providing payment details

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

api_instance = MelioPlatformApiClient::CheckoutsApi.new
checkout_id = 'checkout_id_example' # String | 
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  post_checkouts_checkout_id_complete_request: MelioPlatformApiClient::PostCheckoutsCheckoutIdCompleteRequest.new({funding_source_id: 'funding_source_id_example'}) # PostCheckoutsCheckoutIdCompleteRequest | 
}

begin
  # Complete a Checkout
  api_instance.post_checkouts_checkout_id_complete(checkout_id, idempotency_key, opts)
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling CheckoutsApi->post_checkouts_checkout_id_complete: #{e}"
end
```

#### Using the post_checkouts_checkout_id_complete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_checkouts_checkout_id_complete_with_http_info(checkout_id, idempotency_key, opts)

```ruby
begin
  # Complete a Checkout
  data, status_code, headers = api_instance.post_checkouts_checkout_id_complete_with_http_info(checkout_id, idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling CheckoutsApi->post_checkouts_checkout_id_complete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** |  |  |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **post_checkouts_checkout_id_complete_request** | [**PostCheckoutsCheckoutIdCompleteRequest**](PostCheckoutsCheckoutIdCompleteRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

