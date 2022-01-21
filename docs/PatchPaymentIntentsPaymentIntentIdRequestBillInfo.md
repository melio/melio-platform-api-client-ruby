# MelioPlatformApiClient::PatchPaymentIntentsPaymentIntentIdRequestBillInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice** | [**Invoice**](Invoice.md) |  | [optional] |
| **vendor_id** | **String** | Identifier of the entity. | [optional] |
| **due_date** | **Date** |  | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional][default to &#39;USD&#39;] |
| **amount** | **Integer** |  | [optional] |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PatchPaymentIntentsPaymentIntentIdRequestBillInfo.new(
  invoice: null,
  vendor_id: null,
  due_date: null,
  currency: null,
  amount: null
)
```

