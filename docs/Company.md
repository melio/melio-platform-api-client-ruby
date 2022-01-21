# MelioPlatformApiClient::Company

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **phone_number** | **String** | Holds a phone number - the format is flexible as is determined according to usage. For testing you can use &#x60;123123122&#x60;. |  |
| **address** | [**Address**](Address.md) |  |  |
| **legal_name** | **String** |  |  |
| **tax_info** | [**TaxInfo**](TaxInfo.md) |  |  |
| **legal_address** | [**Address**](Address.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::Company.new(
  name: null,
  phone_number: null,
  address: null,
  legal_name: null,
  tax_info: null,
  legal_address: null
)
```

