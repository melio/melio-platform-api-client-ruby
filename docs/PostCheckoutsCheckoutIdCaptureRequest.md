# MelioPlatformApiClient::PostCheckoutsCheckoutIdCaptureRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_order_reference** | **String** |  |  |
| **invoice** | [**PostCheckoutsCheckoutIdCaptureRequestInvoice**](PostCheckoutsCheckoutIdCaptureRequestInvoice.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PostCheckoutsCheckoutIdCaptureRequest.new(
  merchant_order_reference: null,
  invoice: null
)
```

