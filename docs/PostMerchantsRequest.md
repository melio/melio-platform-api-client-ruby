# MelioPlatformApiClient::PostMerchantsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** |  | [optional] |
| **address** | [**PartialAddress**](PartialAddress.md) |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone_number** | **String** | Holds a phone number - the format is flexible as is determined according to usage. For testing you can use &#x60;123123122&#x60;. | [optional] |
| **logo_file_id** | **String** | Identifier of the entity. | [optional] |
| **website_url** | **String** |  | [optional] |
| **tos_url** | **String** |  | [optional] |
| **mcc_code** | **String** |  | [optional] |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PostMerchantsRequest.new(
  display_name: null,
  address: null,
  email: null,
  phone_number: null,
  logo_file_id: null,
  website_url: null,
  tos_url: null,
  mcc_code: null
)
```

