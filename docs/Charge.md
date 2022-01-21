# MelioPlatformApiClient::Charge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the entity. |  |
| **history** | [**ShortHistory**](ShortHistory.md) |  |  |
| **status** | **String** |  |  |
| **due_date** | **Date** |  |  |
| **amount** | **Integer** |  |  |
| **currency** | [**Currency**](Currency.md) |  | [default to &#39;USD&#39;] |
| **merchant_order_reference** | **String** | Merchant&#39;s reference for the order in their systems as provided when the Charge object was created |  |
| **invoice** | [**Invoice**](Invoice.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::Charge.new(
  id: null,
  history: null,
  status: null,
  due_date: null,
  amount: null,
  currency: null,
  merchant_order_reference: null,
  invoice: null
)
```

