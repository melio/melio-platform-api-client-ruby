# MelioPlatformApiClient::DeliveryMethodsApi

All URIs are relative to *https://api.melio.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_delivery_methods_delivery_method_id**](DeliveryMethodsApi.md#delete_delivery_methods_delivery_method_id) | **DELETE** /delivery-methods/{deliveryMethodId} | Delete a Delivery Method |
| [**get_delivery_methods**](DeliveryMethodsApi.md#get_delivery_methods) | **GET** /delivery-methods | Retrieve all Delivery Methods |
| [**get_delivery_methods_delivery_method_id**](DeliveryMethodsApi.md#get_delivery_methods_delivery_method_id) | **GET** /delivery-methods/{deliveryMethodId} | Retrieve a Delivery Method |
| [**get_vendors_vendor_id_delivery_methods**](DeliveryMethodsApi.md#get_vendors_vendor_id_delivery_methods) | **GET** /vendors/{vendorId}/delivery-methods | Retrieve a Vendor&#39;s Delivery Methods |
| [**post_delivery_methods**](DeliveryMethodsApi.md#post_delivery_methods) | **POST** /delivery-methods | Create a Delivery Method |
| [**post_vendors_vendor_id_delivery_methods**](DeliveryMethodsApi.md#post_vendors_vendor_id_delivery_methods) | **POST** /vendors/{vendorId}/delivery-methods | Create a Vendor&#39;s Delivery Method |


## delete_delivery_methods_delivery_method_id

> <DeletedResponse> delete_delivery_methods_delivery_method_id(delivery_method_id, idempotency_key, opts)

Delete a Delivery Method

Remove a Delivery Method from the Account

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

api_instance = MelioPlatformApiClient::DeliveryMethodsApi.new
delivery_method_id = 'delivery_method_id_example' # String | 
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Delete a Delivery Method
  result = api_instance.delete_delivery_methods_delivery_method_id(delivery_method_id, idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling DeliveryMethodsApi->delete_delivery_methods_delivery_method_id: #{e}"
end
```

#### Using the delete_delivery_methods_delivery_method_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedResponse>, Integer, Hash)> delete_delivery_methods_delivery_method_id_with_http_info(delivery_method_id, idempotency_key, opts)

```ruby
begin
  # Delete a Delivery Method
  data, status_code, headers = api_instance.delete_delivery_methods_delivery_method_id_with_http_info(delivery_method_id, idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling DeliveryMethodsApi->delete_delivery_methods_delivery_method_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delivery_method_id** | **String** |  |  |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**DeletedResponse**](DeletedResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_delivery_methods

> <GetDeliveryMethodsResponse> get_delivery_methods(opts)

Retrieve all Delivery Methods

Retrieve a list of all Delivery Methods the Account has

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

api_instance = MelioPlatformApiClient::DeliveryMethodsApi.new
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Retrieve all Delivery Methods
  result = api_instance.get_delivery_methods(opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling DeliveryMethodsApi->get_delivery_methods: #{e}"
end
```

#### Using the get_delivery_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeliveryMethodsResponse>, Integer, Hash)> get_delivery_methods_with_http_info(opts)

```ruby
begin
  # Retrieve all Delivery Methods
  data, status_code, headers = api_instance.get_delivery_methods_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeliveryMethodsResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling DeliveryMethodsApi->get_delivery_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**GetDeliveryMethodsResponse**](GetDeliveryMethodsResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_delivery_methods_delivery_method_id

> <GetDeliveryMethodsDeliveryMethodIdResponse> get_delivery_methods_delivery_method_id(delivery_method_id, opts)

Retrieve a Delivery Method

Retrieve the details about a specific Delivery Method the Account has

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

api_instance = MelioPlatformApiClient::DeliveryMethodsApi.new
delivery_method_id = 'delivery_method_id_example' # String | 
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Retrieve a Delivery Method
  result = api_instance.get_delivery_methods_delivery_method_id(delivery_method_id, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling DeliveryMethodsApi->get_delivery_methods_delivery_method_id: #{e}"
end
```

#### Using the get_delivery_methods_delivery_method_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeliveryMethodsDeliveryMethodIdResponse>, Integer, Hash)> get_delivery_methods_delivery_method_id_with_http_info(delivery_method_id, opts)

```ruby
begin
  # Retrieve a Delivery Method
  data, status_code, headers = api_instance.get_delivery_methods_delivery_method_id_with_http_info(delivery_method_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeliveryMethodsDeliveryMethodIdResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling DeliveryMethodsApi->get_delivery_methods_delivery_method_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delivery_method_id** | **String** |  |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**GetDeliveryMethodsDeliveryMethodIdResponse**](GetDeliveryMethodsDeliveryMethodIdResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vendors_vendor_id_delivery_methods

> <GetVendorsVendorIdDeliveryMethodsResponse> get_vendors_vendor_id_delivery_methods(vendor_id, opts)

Retrieve a Vendor's Delivery Methods

Get a list of a Vendor's Delivery Methods, that can be used to sent funds to.

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

api_instance = MelioPlatformApiClient::DeliveryMethodsApi.new
vendor_id = 'vendor_id_example' # String | 
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Retrieve a Vendor's Delivery Methods
  result = api_instance.get_vendors_vendor_id_delivery_methods(vendor_id, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling DeliveryMethodsApi->get_vendors_vendor_id_delivery_methods: #{e}"
end
```

#### Using the get_vendors_vendor_id_delivery_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVendorsVendorIdDeliveryMethodsResponse>, Integer, Hash)> get_vendors_vendor_id_delivery_methods_with_http_info(vendor_id, opts)

```ruby
begin
  # Retrieve a Vendor's Delivery Methods
  data, status_code, headers = api_instance.get_vendors_vendor_id_delivery_methods_with_http_info(vendor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVendorsVendorIdDeliveryMethodsResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling DeliveryMethodsApi->get_vendors_vendor_id_delivery_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **String** |  |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**GetVendorsVendorIdDeliveryMethodsResponse**](GetVendorsVendorIdDeliveryMethodsResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_delivery_methods

> <PostDeliveryMethodsResponse> post_delivery_methods(idempotency_key, opts)

Create a Delivery Method

Add a new Delivery Method for the Account.  The `type` field determines the contents of the `details` field, according to the following mapping: * `bank-account` => `BankAccount` * `paper-check` => `PaperCheck` * `virtual-account` => `VirtualAccount`

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

api_instance = MelioPlatformApiClient::DeliveryMethodsApi.new
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  post_delivery_methods_request: MelioPlatformApiClient::PostDeliveryMethodsRequest.new({type: MelioPlatformApiClient::DeliveryMethodType::BANK_ACCOUNT, details: MelioPlatformApiClient::BankAccount.new({routing_number: 'routing_number_example', account_type: MelioPlatformApiClient::BankAccountType::CHECKING, account_number: 'account_number_example'})}) # PostDeliveryMethodsRequest | 
}

begin
  # Create a Delivery Method
  result = api_instance.post_delivery_methods(idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling DeliveryMethodsApi->post_delivery_methods: #{e}"
end
```

#### Using the post_delivery_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostDeliveryMethodsResponse>, Integer, Hash)> post_delivery_methods_with_http_info(idempotency_key, opts)

```ruby
begin
  # Create a Delivery Method
  data, status_code, headers = api_instance.post_delivery_methods_with_http_info(idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostDeliveryMethodsResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling DeliveryMethodsApi->post_delivery_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **post_delivery_methods_request** | [**PostDeliveryMethodsRequest**](PostDeliveryMethodsRequest.md) |  | [optional] |

### Return type

[**PostDeliveryMethodsResponse**](PostDeliveryMethodsResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_vendors_vendor_id_delivery_methods

> <PostVendorsVendorIdDeliveryMethodsResponse> post_vendors_vendor_id_delivery_methods(vendor_id, idempotency_key, opts)

Create a Vendor's Delivery Method

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

api_instance = MelioPlatformApiClient::DeliveryMethodsApi.new
vendor_id = 'vendor_id_example' # String | 
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  body: 3.56 # PostDeliveryMethodsRequest | 
}

begin
  # Create a Vendor's Delivery Method
  result = api_instance.post_vendors_vendor_id_delivery_methods(vendor_id, idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling DeliveryMethodsApi->post_vendors_vendor_id_delivery_methods: #{e}"
end
```

#### Using the post_vendors_vendor_id_delivery_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostVendorsVendorIdDeliveryMethodsResponse>, Integer, Hash)> post_vendors_vendor_id_delivery_methods_with_http_info(vendor_id, idempotency_key, opts)

```ruby
begin
  # Create a Vendor's Delivery Method
  data, status_code, headers = api_instance.post_vendors_vendor_id_delivery_methods_with_http_info(vendor_id, idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostVendorsVendorIdDeliveryMethodsResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling DeliveryMethodsApi->post_vendors_vendor_id_delivery_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **String** |  |  |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **body** | **PostDeliveryMethodsRequest** |  | [optional] |

### Return type

[**PostVendorsVendorIdDeliveryMethodsResponse**](PostVendorsVendorIdDeliveryMethodsResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

