# MelioPlatformApiClient::FilesApi

All URIs are relative to *https://api.melio.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_files**](FilesApi.md#get_files) | **GET** /files | Retrieve files |
| [**get_files_file_id**](FilesApi.md#get_files_file_id) | **GET** /files/{fileId} | Retrieve a File |
| [**get_files_file_id_data**](FilesApi.md#get_files_file_id_data) | **GET** /files/{fileId}/data | Retrieve data from a File using OCR |
| [**post_files**](FilesApi.md#post_files) | **POST** /files | Create / upload a File |


## get_files

> <GetFilesResponse> get_files(opts)

Retrieve files

Retrieve the list of Files the Account uploaded to Melio

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

api_instance = MelioPlatformApiClient::FilesApi.new
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Retrieve files
  result = api_instance.get_files(opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FilesApi->get_files: #{e}"
end
```

#### Using the get_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFilesResponse>, Integer, Hash)> get_files_with_http_info(opts)

```ruby
begin
  # Retrieve files
  data, status_code, headers = api_instance.get_files_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFilesResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FilesApi->get_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**GetFilesResponse**](GetFilesResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_files_file_id

> <GetFilesFileIdResponse> get_files_file_id(file_id)

Retrieve a File

Get a File object with a details and a URL for the actual file to download.

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

api_instance = MelioPlatformApiClient::FilesApi.new
file_id = 'file_id_example' # String | 

begin
  # Retrieve a File
  result = api_instance.get_files_file_id(file_id)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FilesApi->get_files_file_id: #{e}"
end
```

#### Using the get_files_file_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFilesFileIdResponse>, Integer, Hash)> get_files_file_id_with_http_info(file_id)

```ruby
begin
  # Retrieve a File
  data, status_code, headers = api_instance.get_files_file_id_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFilesFileIdResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FilesApi->get_files_file_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** |  |  |

### Return type

[**GetFilesFileIdResponse**](GetFilesFileIdResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_files_file_id_data

> <GetFilesFileIdDataResponse> get_files_file_id_data(file_id, opts)

Retrieve data from a File using OCR

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

api_instance = MelioPlatformApiClient::FilesApi.new
file_id = 'file_id_example' # String | 
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Retrieve data from a File using OCR
  result = api_instance.get_files_file_id_data(file_id, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FilesApi->get_files_file_id_data: #{e}"
end
```

#### Using the get_files_file_id_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFilesFileIdDataResponse>, Integer, Hash)> get_files_file_id_data_with_http_info(file_id, opts)

```ruby
begin
  # Retrieve data from a File using OCR
  data, status_code, headers = api_instance.get_files_file_id_data_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFilesFileIdDataResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FilesApi->get_files_file_id_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** |  |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**GetFilesFileIdDataResponse**](GetFilesFileIdDataResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_files

> <PostFilesResponse> post_files(idempotency_key, opts)

Create / upload a File

Upload a file as a File object, to be used by other operations

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

api_instance = MelioPlatformApiClient::FilesApi.new
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example', # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
  file: File.new('/path/to/some/file') # File | 
}

begin
  # Create / upload a File
  result = api_instance.post_files(idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FilesApi->post_files: #{e}"
end
```

#### Using the post_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostFilesResponse>, Integer, Hash)> post_files_with_http_info(idempotency_key, opts)

```ruby
begin
  # Create / upload a File
  data, status_code, headers = api_instance.post_files_with_http_info(idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostFilesResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling FilesApi->post_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |
| **file** | **File** |  | [optional] |

### Return type

[**PostFilesResponse**](PostFilesResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

