# MelioPlatformApiClient::PostPaymentIntentsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_to_pay** | **Integer** |  |  |
| **funding_source_id** | **String** | Identifier of the entity. | [optional] |
| **delivery_method_id** | **String** | Identifier of the entity. | [optional] |
| **note_to_vendor** | **String** | A note that the Vendor will see when receiving the produced Payment. | [optional] |
| **scheduled_date** | **Date** |  | [optional] |
| **selected_delivery_preference_type** | [**DeliveryPreferenceType**](DeliveryPreferenceType.md) |  | [optional] |
| **bill_info** | [**PostPaymentIntentsRequestBillInfo**](PostPaymentIntentsRequestBillInfo.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PostPaymentIntentsRequest.new(
  amount_to_pay: null,
  funding_source_id: null,
  delivery_method_id: null,
  note_to_vendor: null,
  scheduled_date: null,
  selected_delivery_preference_type: null,
  bill_info: null
)
```

