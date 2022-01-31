# MelioPlatformApiClient::PostCheckoutsCheckoutIdCaptureRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_order_reference** | **String** |  |  |
| **invoice** | [**PostCheckoutsCheckoutIdCaptureRequestInvoice**](PostCheckoutsCheckoutIdCaptureRequestInvoice.md) |  |  |
| **amount** | **Integer** | Optional. Final amount in order&#39;s currency to actually charge for this order. Cannot be more than the original checkout&#39;s outstanding balance. | [optional] |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PostCheckoutsCheckoutIdCaptureRequest.new(
  merchant_order_reference: null,
  invoice: null,
  amount: null
)
```

