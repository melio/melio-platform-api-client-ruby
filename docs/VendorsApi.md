# MelioPlatformApiClient::VendorsApi

All URIs are relative to *https://api.melio.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_vendors_vendor_id**](VendorsApi.md#delete_vendors_vendor_id) | **DELETE** /vendors/{vendorId} | Delete a Vendor |
| [**get_vendor_directory**](VendorsApi.md#get_vendor_directory) | **GET** /vendor-directory | Retrieve all filtered Vendors in the Vendor Directory |
| [**get_vendors**](VendorsApi.md#get_vendors) | **GET** /vendors | Retrieve all Vendors |
| [**get_vendors_vendor_id**](VendorsApi.md#get_vendors_vendor_id) | **GET** /vendors/{vendorId} | Retrieve a Vendor |
| [**get_vendors_vendor_id_delivery_methods**](VendorsApi.md#get_vendors_vendor_id_delivery_methods) | **GET** /vendors/{vendorId}/delivery-methods | Retrieve a Vendor&#39;s Delivery Methods |
| [**patch_vendors_vendor_id**](VendorsApi.md#patch_vendors_vendor_id) | **PATCH** /vendors/{vendorId} | Update a Vendor |
| [**post_vendors**](VendorsApi.md#post_vendors) | **POST** /vendors | Create a Vendor |
| [**post_vendors_bulk**](VendorsApi.md#post_vendors_bulk) | **POST** /vendors/bulk | Create multiple Vendors |
| [**post_vendors_from_vendor_directory**](VendorsApi.md#post_vendors_from_vendor_directory) | **POST** /vendors/from-vendor-directory | Create a Vendor from Vendor Directory |
| [**post_vendors_vendor_id_delivery_methods**](VendorsApi.md#post_vendors_vendor_id_delivery_methods) | **POST** /vendors/{vendorId}/delivery-methods | Create a Vendor&#39;s Delivery Method |


## delete_vendors_vendor_id

> <DeletedResponse> delete_vendors_vendor_id(vendor_id, idempotency_key, opts)

Delete a Vendor

Removing a Vendor from an Account.

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

api_instance = MelioPlatformApiClient::VendorsApi.new
vendor_id = 'vendor_id_example' # String | 
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Delete a Vendor
  result = api_instance.delete_vendors_vendor_id(vendor_id, idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorsApi->delete_vendors_vendor_id: #{e}"
end
```

#### Using the delete_vendors_vendor_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedResponse>, Integer, Hash)> delete_vendors_vendor_id_with_http_info(vendor_id, idempotency_key, opts)

```ruby
begin
  # Delete a Vendor
  data, status_code, headers = api_instance.delete_vendors_vendor_id_with_http_info(vendor_id, idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorsApi->delete_vendors_vendor_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **String** |  |  |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**DeletedResponse**](DeletedResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vendor_directory

> <GetVendorDirectoryResponse> get_vendor_directory(name, opts)

Retrieve all filtered Vendors in the Vendor Directory

List of all Vendors in the Vendor Directory, filtered by the name parameter and with provided query limit (default 20).

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

api_instance = MelioPlatformApiClient::VendorsApi.new
name = 'name_example' # String | The name of the Vendor to query
opts = {
  limit: 56 # Integer | The number of items to include in the returned list
}

begin
  # Retrieve all filtered Vendors in the Vendor Directory
  result = api_instance.get_vendor_directory(name, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_directory: #{e}"
end
```

#### Using the get_vendor_directory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVendorDirectoryResponse>, Integer, Hash)> get_vendor_directory_with_http_info(name, opts)

```ruby
begin
  # Retrieve all filtered Vendors in the Vendor Directory
  data, status_code, headers = api_instance.get_vendor_directory_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVendorDirectoryResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_directory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the Vendor to query |  |
| **limit** | **Integer** | The number of items to include in the returned list | [optional][default to 20] |

### Return type

[**GetVendorDirectoryResponse**](GetVendorDirectoryResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vendors

> <GetVendorsResponse> get_vendors

Retrieve all Vendors

Retrieve a list of Vendors that are attached to an Account

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

api_instance = MelioPlatformApiClient::VendorsApi.new

begin
  # Retrieve all Vendors
  result = api_instance.get_vendors
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorsApi->get_vendors: #{e}"
end
```

#### Using the get_vendors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVendorsResponse>, Integer, Hash)> get_vendors_with_http_info

```ruby
begin
  # Retrieve all Vendors
  data, status_code, headers = api_instance.get_vendors_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVendorsResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorsApi->get_vendors_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetVendorsResponse**](GetVendorsResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vendors_vendor_id

> <GetVendorsVendorIdResponse> get_vendors_vendor_id(vendor_id, opts)

Retrieve a Vendor

Retrieve a single Vendor using its ID.

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

api_instance = MelioPlatformApiClient::VendorsApi.new
vendor_id = 'vendor_id_example' # String | 
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Retrieve a Vendor
  result = api_instance.get_vendors_vendor_id(vendor_id, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorsApi->get_vendors_vendor_id: #{e}"
end
```

#### Using the get_vendors_vendor_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVendorsVendorIdResponse>, Integer, Hash)> get_vendors_vendor_id_with_http_info(vendor_id, opts)

```ruby
begin
  # Retrieve a Vendor
  data, status_code, headers = api_instance.get_vendors_vendor_id_with_http_info(vendor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVendorsVendorIdResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorsApi->get_vendors_vendor_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **String** |  |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**GetVendorsVendorIdResponse**](GetVendorsVendorIdResponse.md)

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

api_instance = MelioPlatformApiClient::VendorsApi.new
vendor_id = 'vendor_id_example' # String | 
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Retrieve a Vendor's Delivery Methods
  result = api_instance.get_vendors_vendor_id_delivery_methods(vendor_id, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorsApi->get_vendors_vendor_id_delivery_methods: #{e}"
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
  puts "Error when calling VendorsApi->get_vendors_vendor_id_delivery_methods_with_http_info: #{e}"
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


## patch_vendors_vendor_id

> <PatchVendorsVendorIdResponse> patch_vendors_vendor_id(vendor_id, idempotency_key, opts)

Update a Vendor

Update an existing Vendor.  The request's body can be partial, and only provided fields will be overwritten. Set a field to `null` in order to remove its contents.

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

api_instance = MelioPlatformApiClient::VendorsApi.new
vendor_id = 'vendor_id_example' # String | 
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  patch_vendors_vendor_id_request: MelioPlatformApiClient::PatchVendorsVendorIdRequest.new # PatchVendorsVendorIdRequest | 
}

begin
  # Update a Vendor
  result = api_instance.patch_vendors_vendor_id(vendor_id, idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorsApi->patch_vendors_vendor_id: #{e}"
end
```

#### Using the patch_vendors_vendor_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PatchVendorsVendorIdResponse>, Integer, Hash)> patch_vendors_vendor_id_with_http_info(vendor_id, idempotency_key, opts)

```ruby
begin
  # Update a Vendor
  data, status_code, headers = api_instance.patch_vendors_vendor_id_with_http_info(vendor_id, idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PatchVendorsVendorIdResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorsApi->patch_vendors_vendor_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **String** |  |  |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **patch_vendors_vendor_id_request** | [**PatchVendorsVendorIdRequest**](PatchVendorsVendorIdRequest.md) |  | [optional] |

### Return type

[**PatchVendorsVendorIdResponse**](PatchVendorsVendorIdResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_vendors

> <PostVendorsResponse> post_vendors(idempotency_key, opts)

Create a Vendor

Create (attach) a Vendor to an Account.

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

api_instance = MelioPlatformApiClient::VendorsApi.new
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  post_vendors_request: MelioPlatformApiClient::PostVendorsRequest.new({name: 'name_example', contact: MelioPlatformApiClient::VendorAllOfContact.new({name: 'name_example', email: 'email_example', phone_number: 'phone_number_example'})}) # PostVendorsRequest | 
}

begin
  # Create a Vendor
  result = api_instance.post_vendors(idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorsApi->post_vendors: #{e}"
end
```

#### Using the post_vendors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostVendorsResponse>, Integer, Hash)> post_vendors_with_http_info(idempotency_key, opts)

```ruby
begin
  # Create a Vendor
  data, status_code, headers = api_instance.post_vendors_with_http_info(idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostVendorsResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorsApi->post_vendors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **post_vendors_request** | [**PostVendorsRequest**](PostVendorsRequest.md) |  | [optional] |

### Return type

[**PostVendorsResponse**](PostVendorsResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_vendors_bulk

> <PostVendorsBulkResponse> post_vendors_bulk(idempotency_key, opts)

Create multiple Vendors

Create (attach) multiple Vendors to an Account, based on a provided list of business entities.

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

api_instance = MelioPlatformApiClient::VendorsApi.new
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  post_vendors_bulk_request: MelioPlatformApiClient::PostVendorsBulkRequest.new({vendors: [MelioPlatformApiClient::PostVendorsRequest.new({name: 'name_example', contact: MelioPlatformApiClient::VendorAllOfContact.new({name: 'name_example', email: 'email_example', phone_number: 'phone_number_example'})})]}) # PostVendorsBulkRequest | 
}

begin
  # Create multiple Vendors
  result = api_instance.post_vendors_bulk(idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorsApi->post_vendors_bulk: #{e}"
end
```

#### Using the post_vendors_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostVendorsBulkResponse>, Integer, Hash)> post_vendors_bulk_with_http_info(idempotency_key, opts)

```ruby
begin
  # Create multiple Vendors
  data, status_code, headers = api_instance.post_vendors_bulk_with_http_info(idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostVendorsBulkResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorsApi->post_vendors_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **post_vendors_bulk_request** | [**PostVendorsBulkRequest**](PostVendorsBulkRequest.md) |  | [optional] |

### Return type

[**PostVendorsBulkResponse**](PostVendorsBulkResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_vendors_from_vendor_directory

> <PostVendorsFromVendorDirectoryResponse> post_vendors_from_vendor_directory(idempotency_key, opts)

Create a Vendor from Vendor Directory

Add a specific Vendor from Vendor Directory by its ID to an Account, and clone its Delivery Method in case of biller account.

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

api_instance = MelioPlatformApiClient::VendorsApi.new
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  post_vendors_from_vendor_directory_request: MelioPlatformApiClient::PostVendorsFromVendorDirectoryRequest.new({vendor_directory_id: 'vendor_directory_id_example'}) # PostVendorsFromVendorDirectoryRequest | 
}

begin
  # Create a Vendor from Vendor Directory
  result = api_instance.post_vendors_from_vendor_directory(idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorsApi->post_vendors_from_vendor_directory: #{e}"
end
```

#### Using the post_vendors_from_vendor_directory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostVendorsFromVendorDirectoryResponse>, Integer, Hash)> post_vendors_from_vendor_directory_with_http_info(idempotency_key, opts)

```ruby
begin
  # Create a Vendor from Vendor Directory
  data, status_code, headers = api_instance.post_vendors_from_vendor_directory_with_http_info(idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostVendorsFromVendorDirectoryResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorsApi->post_vendors_from_vendor_directory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **post_vendors_from_vendor_directory_request** | [**PostVendorsFromVendorDirectoryRequest**](PostVendorsFromVendorDirectoryRequest.md) |  | [optional] |

### Return type

[**PostVendorsFromVendorDirectoryResponse**](PostVendorsFromVendorDirectoryResponse.md)

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

api_instance = MelioPlatformApiClient::VendorsApi.new
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
  puts "Error when calling VendorsApi->post_vendors_vendor_id_delivery_methods: #{e}"
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
  puts "Error when calling VendorsApi->post_vendors_vendor_id_delivery_methods_with_http_info: #{e}"
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

