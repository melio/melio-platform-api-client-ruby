# MelioPlatformApiClient::PaymentIntentAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_to_pay** | **Integer** |  |  |
| **funding_source_id** | **String** | The ID of the Funding Source that will be used for the produced Payment. | [optional] |
| **funding_source** | [**FundingSource**](FundingSource.md) | Info about the Funding Source that will be used for the produced Payment. | [optional] |
| **delivery_method_id** | **String** | The ID of the Delivery Method that will be used for the produced Payment. | [optional] |
| **delivery_method** | [**DeliveryMethod**](DeliveryMethod.md) | Info about the Delivery Method that will be used for the produced Payment. | [optional] |
| **note_to_vendor** | **String** | A note that the Vendor will see when receiving the produced Payment. |  |
| **estimated_fees** | [**Array&lt;PaymentFee&gt;**](PaymentFee.md) | Automatically calculated fees, based on the &#x60;selectedDeliveryPreferenceType&#x60; field. |  |
| **scheduled_date** | **Date** |  | [optional] |
| **status** | **String** | The current status of the Payment Intent as a bill entry. |  |
| **selected_delivery_preference_type** | [**DeliveryPreferenceType**](DeliveryPreferenceType.md) | Set this field to control the delivery preferences for the produced Payment. Updating this will trigger fees re-calculation, which reflect in the &#x60;estimatedFees&#x60; field. | [optional] |
| **delivery_preference_options** | [**Array&lt;DeliveryPreference&gt;**](DeliveryPreference.md) | The possible delivery preference options, based on the current Payment Intent configuration. |  |
| **payments** | [**Array&lt;Payment&gt;**](Payment.md) | A list of Payments that were produced out of this Payment Intent. |  |
| **bill_info** | [**PaymentIntentAllOfBillInfo**](PaymentIntentAllOfBillInfo.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PaymentIntentAllOf.new(
  amount_to_pay: null,
  funding_source_id: null,
  funding_source: null,
  delivery_method_id: null,
  delivery_method: null,
  note_to_vendor: null,
  estimated_fees: null,
  scheduled_date: null,
  status: null,
  selected_delivery_preference_type: null,
  delivery_preference_options: null,
  payments: null,
  bill_info: null
)
```

