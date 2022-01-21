# MelioPlatformApiClient::AccountsApi

All URIs are relative to *https://api.melio.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_accounts**](AccountsApi.md#get_accounts) | **GET** /accounts | Retrieve all Accounts |
| [**get_accounts_account_id**](AccountsApi.md#get_accounts_account_id) | **GET** /accounts/{accountId} | Retrieve an Account |
| [**post_accounts**](AccountsApi.md#post_accounts) | **POST** /accounts | Create an Account |


## get_accounts

> <GetAccountsResponse> get_accounts

Retrieve all Accounts

Retrieve a list of all Accounts the current Partner manages

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

api_instance = MelioPlatformApiClient::AccountsApi.new

begin
  # Retrieve all Accounts
  result = api_instance.get_accounts
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling AccountsApi->get_accounts: #{e}"
end
```

#### Using the get_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountsResponse>, Integer, Hash)> get_accounts_with_http_info

```ruby
begin
  # Retrieve all Accounts
  data, status_code, headers = api_instance.get_accounts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountsResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling AccountsApi->get_accounts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAccountsResponse**](GetAccountsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounts_account_id

> <GetAccountsAccountIdResponse> get_accounts_account_id(account_id)

Retrieve an Account

Retrieve an Account using its ID

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

api_instance = MelioPlatformApiClient::AccountsApi.new
account_id = 'account_id_example' # String | 

begin
  # Retrieve an Account
  result = api_instance.get_accounts_account_id(account_id)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling AccountsApi->get_accounts_account_id: #{e}"
end
```

#### Using the get_accounts_account_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountsAccountIdResponse>, Integer, Hash)> get_accounts_account_id_with_http_info(account_id)

```ruby
begin
  # Retrieve an Account
  data, status_code, headers = api_instance.get_accounts_account_id_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountsAccountIdResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling AccountsApi->get_accounts_account_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetAccountsAccountIdResponse**](GetAccountsAccountIdResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_accounts

> <PostAccountsResponse> post_accounts(idempotency_key, opts)

Create an Account

Create an Account with a company and a user.  Note that you can submit a Partern internal ID in the ID `id` field, in order to set it in Melio system as well. If not supplied, a random ID will be generated.

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

api_instance = MelioPlatformApiClient::AccountsApi.new
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  post_accounts_request: MelioPlatformApiClient::PostAccountsRequest.new({company: MelioPlatformApiClient::Company.new({name: 'name_example', phone_number: 'phone_number_example', address: MelioPlatformApiClient::Address.new({line1: 'line1_example', city: 'city_example', state: 'state_example', postal_code: 'postal_code_example'}), legal_name: 'legal_name_example', tax_info: MelioPlatformApiClient::TaxInfo.new({identifier: 'identifier_example', type: 'SSN'}), legal_address: MelioPlatformApiClient::Address.new({line1: 'line1_example', city: 'city_example', state: 'state_example', postal_code: 'postal_code_example'})}), user: MelioPlatformApiClient::Person.new({first_name: 'first_name_example', last_name: 'last_name_example', email: 'email_example'})}) # PostAccountsRequest | 
}

begin
  # Create an Account
  result = api_instance.post_accounts(idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling AccountsApi->post_accounts: #{e}"
end
```

#### Using the post_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAccountsResponse>, Integer, Hash)> post_accounts_with_http_info(idempotency_key, opts)

```ruby
begin
  # Create an Account
  data, status_code, headers = api_instance.post_accounts_with_http_info(idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAccountsResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling AccountsApi->post_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **post_accounts_request** | [**PostAccountsRequest**](PostAccountsRequest.md) |  | [optional] |

### Return type

[**PostAccountsResponse**](PostAccountsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

