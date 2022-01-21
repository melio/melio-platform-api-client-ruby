# MelioPlatformApiClient::Merchant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the entity. |  |
| **history** | [**ShortHistory**](ShortHistory.md) |  |  |
| **address** | [**PartialAddress**](PartialAddress.md) |  | [optional] |
| **logo_file_id** | **String** | Identifier of the entity. | [optional] |
| **display_name** | **String** |  | [optional] |
| **phone_number** | **String** | Holds a phone number - the format is flexible as is determined according to usage. For testing you can use &#x60;123123122&#x60;. | [optional] |
| **email** | **String** |  | [optional] |
| **net_terms** | **Integer** |  |  |
| **website_url** | **String** |  | [optional] |
| **tos_url** | **String** |  | [optional] |
| **mcc_code** | **String** |  | [optional] |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::Merchant.new(
  id: null,
  history: null,
  address: null,
  logo_file_id: null,
  display_name: null,
  phone_number: null,
  email: null,
  net_terms: null,
  website_url: null,
  tos_url: null,
  mcc_code: null
)
```

