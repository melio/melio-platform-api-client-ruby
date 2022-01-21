# MelioPlatformApiClient::ChargesApi

All URIs are relative to *https://api.melio.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_charges_charge_id**](ChargesApi.md#delete_charges_charge_id) | **DELETE** /charges/{chargeId} | Delete a Charge |
| [**get_charges_charge_id**](ChargesApi.md#get_charges_charge_id) | **GET** /charges/{chargeId} | Retrieve a Charge |
| [**get_merchants_merchant_id_charges**](ChargesApi.md#get_merchants_merchant_id_charges) | **GET** /merchants/{merchantId}/charges | Retrieve all Charges |


## delete_charges_charge_id

> <DeletedResponse> delete_charges_charge_id(charge_id, idempotency_key, opts)

Delete a Charge

Cancel a Charge (Refund)

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

api_instance = MelioPlatformApiClient::ChargesApi.new
charge_id = 'charge_id_example' # String | 
idempotency_key = 'idempotency_key_example' # String | Unique idempotency key
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Delete a Charge
  result = api_instance.delete_charges_charge_id(charge_id, idempotency_key, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling ChargesApi->delete_charges_charge_id: #{e}"
end
```

#### Using the delete_charges_charge_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedResponse>, Integer, Hash)> delete_charges_charge_id_with_http_info(charge_id, idempotency_key, opts)

```ruby
begin
  # Delete a Charge
  data, status_code, headers = api_instance.delete_charges_charge_id_with_http_info(charge_id, idempotency_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling ChargesApi->delete_charges_charge_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charge_id** | **String** |  |  |
| **idempotency_key** | **String** | Unique idempotency key |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**DeletedResponse**](DeletedResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_charges_charge_id

> <GetChargesChargeIdResponse> get_charges_charge_id(charge_id, opts)

Retrieve a Charge

Retrieve the status of a Charge made by the Account

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

api_instance = MelioPlatformApiClient::ChargesApi.new
charge_id = 'charge_id_example' # String | 
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Retrieve a Charge
  result = api_instance.get_charges_charge_id(charge_id, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling ChargesApi->get_charges_charge_id: #{e}"
end
```

#### Using the get_charges_charge_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChargesChargeIdResponse>, Integer, Hash)> get_charges_charge_id_with_http_info(charge_id, opts)

```ruby
begin
  # Retrieve a Charge
  data, status_code, headers = api_instance.get_charges_charge_id_with_http_info(charge_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChargesChargeIdResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling ChargesApi->get_charges_charge_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charge_id** | **String** |  |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**GetChargesChargeIdResponse**](GetChargesChargeIdResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_merchants_merchant_id_charges

> <GetChargesResponse> get_merchants_merchant_id_charges(merchant_id, opts)

Retrieve all Charges

Retrieve all the Charges for the merchant

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

api_instance = MelioPlatformApiClient::ChargesApi.new
merchant_id = 'merchant_id_example' # String | 
opts = {
  melio_account: 'melio_account_example' # String | The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account's ID which returned when creating the Account, or when retrieving all of the Partner's Accounts. Note that most operations are not permitted without the presence of this header.
}

begin
  # Retrieve all Charges
  result = api_instance.get_merchants_merchant_id_charges(merchant_id, opts)
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling ChargesApi->get_merchants_merchant_id_charges: #{e}"
end
```

#### Using the get_merchants_merchant_id_charges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChargesResponse>, Integer, Hash)> get_merchants_merchant_id_charges_with_http_info(merchant_id, opts)

```ruby
begin
  # Retrieve all Charges
  data, status_code, headers = api_instance.get_merchants_merchant_id_charges_with_http_info(merchant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChargesResponse>
rescue MelioPlatformApiClient::ApiError => e
  puts "Error when calling ChargesApi->get_merchants_merchant_id_charges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_id** | **String** |  |  |
| **melio_account** | **String** | The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header. | [optional] |

### Return type

[**GetChargesResponse**](GetChargesResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

