# MelioPlatformApiClient::DomesticWireAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **routing_number** | **String** |  |  |
| **account_number** | **String** |  |  |
| **address** | [**DomesticWireAccountAddress**](DomesticWireAccountAddress.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::DomesticWireAccount.new(
  routing_number: null,
  account_number: null,
  address: null
)
```

