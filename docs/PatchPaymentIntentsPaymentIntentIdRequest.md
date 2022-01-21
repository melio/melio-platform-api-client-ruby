# MelioPlatformApiClient::PatchPaymentIntentsPaymentIntentIdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_to_pay** | **Integer** |  | [optional] |
| **scheduled_date** | **Date** |  | [optional] |
| **funding_source_id** | **String** |  | [optional] |
| **delivery_method_id** | **String** |  | [optional] |
| **selected_delivery_preference_type** | [**DeliveryPreferenceType**](DeliveryPreferenceType.md) |  | [optional] |
| **note_to_vendor** | **String** |  | [optional] |
| **bill_info** | [**PatchPaymentIntentsPaymentIntentIdRequestBillInfo**](PatchPaymentIntentsPaymentIntentIdRequestBillInfo.md) |  | [optional] |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PatchPaymentIntentsPaymentIntentIdRequest.new(
  amount_to_pay: null,
  scheduled_date: null,
  funding_source_id: null,
  delivery_method_id: null,
  selected_delivery_preference_type: null,
  note_to_vendor: null,
  bill_info: null
)
```

