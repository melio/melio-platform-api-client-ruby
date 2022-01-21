# MelioPlatformApiClient::PutPaymentIntentsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | This is your bill&#39;s amount | [optional] |
| **payment_amount** | **Float** | This is the desired payment amount | [optional] |
| **schedule_date** | **Time** |  | [optional] |
| **funding_source_id** | **String** |  | [optional] |
| **delivery_method_id** | **String** |  | [optional] |
| **delivery_preference** | [**DeliveryPreference**](DeliveryPreference.md) |  | [optional] |
| **invoice_number** | **String** |  | [optional] |
| **vendor_id** | **String** | Identifier of the entity. | [optional] |
| **due_date** | **Time** |  | [optional] |
| **note** | **String** |  | [optional] |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PutPaymentIntentsRequest.new(
  amount: 200,
  payment_amount: 50,
  schedule_date: null,
  funding_source_id: null,
  delivery_method_id: null,
  delivery_preference: null,
  invoice_number: 2000,
  vendor_id: null,
  due_date: null,
  note: null
)
```

