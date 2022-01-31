# MelioPlatformApiClient::VendorDirectoryApi

All URIs are relative to *https://api.melio.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_vendor_directory**](VendorDirectoryApi.md#get_vendor_directory) | **GET** /vendor-directory | Retrieve all filtered Vendors in the Vendor Directory |
| [**post_vendors_from_vendor_directory**](VendorDirectoryApi.md#post_vendors_from_vendor_directory) | **POST** /vendors/from-vendor-directory | Create a Vendor from Vendor Directory |


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

api_instance = MelioPlatformApiClient::VendorDirectoryApi.new
name = 'name_example' # String | The name of the Vendor to query
opts = {
  limit: 56, # Integer | The number of items to include in the returned list
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Retrieve all filtered Vendors in the Vendor Directory
  result = api_instance.get_vendor_directory(name, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling VendorDirectoryApi->get_vendor_directory: #{e}"
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
  puts "Error when calling VendorDirectoryApi->get_vendor_directory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the Vendor to query |  |
| **limit** | **Integer** | The number of items to include in the returned list | [optional][default to 20] |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**GetVendorDirectoryResponse**](GetVendorDirectoryResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
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

api_instance = MelioPlatformApiClient::VendorDirectoryApi.new
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
  puts "Error when calling VendorDirectoryApi->post_vendors_from_vendor_directory: #{e}"
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
  puts "Error when calling VendorDirectoryApi->post_vendors_from_vendor_directory_with_http_info: #{e}"
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

