# MelioPlatformApiClient::PostDeliveryMethodsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**DeliveryMethodType**](DeliveryMethodType.md) |  |  |
| **details** | [**OneOfBankAccountVirtualAccountPaperCheckDomesticWireAccount**](OneOfBankAccountVirtualAccountPaperCheckDomesticWireAccount.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PostDeliveryMethodsRequest.new(
  type: null,
  details: null
)
```

