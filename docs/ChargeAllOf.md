# MelioPlatformApiClient::ChargeAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **due_date** | **Date** |  |  |
| **amount** | **Integer** |  |  |
| **currency** | [**Currency**](Currency.md) |  | [default to &#39;USD&#39;] |
| **merchant_order_reference** | **String** | Merchant&#39;s reference for the order in their systems as provided when the Charge object was created |  |
| **invoice** | [**Invoice**](Invoice.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::ChargeAllOf.new(
  status: null,
  due_date: null,
  amount: null,
  currency: null,
  merchant_order_reference: null,
  invoice: null
)
```

