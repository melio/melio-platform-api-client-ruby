# MelioPlatformApiClient::PostPaymentIntentsRequestBillInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  |  |
| **due_date** | **Date** |  | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [default to &#39;USD&#39;] |
| **invoice** | [**Invoice**](Invoice.md) |  |  |
| **vendor_id** | **String** | Identifier of the entity. |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PostPaymentIntentsRequestBillInfo.new(
  amount: null,
  due_date: null,
  currency: null,
  invoice: null,
  vendor_id: null
)
```

