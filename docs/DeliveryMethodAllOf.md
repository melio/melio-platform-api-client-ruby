# MelioPlatformApiClient::DeliveryMethodAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**DeliveryMethodType**](DeliveryMethodType.md) |  |  |
| **details** | [**OneOfBankAccountVirtualAccountPaperCheckBillerAccountDomesticWireAccount**](OneOfBankAccountVirtualAccountPaperCheckBillerAccountDomesticWireAccount.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::DeliveryMethodAllOf.new(
  type: null,
  details: null
)
```

