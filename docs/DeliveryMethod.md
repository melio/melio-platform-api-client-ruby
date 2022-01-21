# MelioPlatformApiClient::DeliveryMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the entity. |  |
| **history** | [**ShortHistory**](ShortHistory.md) |  |  |
| **type** | [**DeliveryMethodType**](DeliveryMethodType.md) |  |  |
| **details** | [**OneOfBankAccountVirtualAccountPaperCheckBillerAccountDomesticWireAccount**](OneOfBankAccountVirtualAccountPaperCheckBillerAccountDomesticWireAccount.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::DeliveryMethod.new(
  id: null,
  history: null,
  type: null,
  details: null
)
```

