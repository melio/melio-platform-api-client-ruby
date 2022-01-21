# MelioPlatformApiClient::DeliveryPreference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min_estimated_delivery_date** | **Date** |  | [optional] |
| **max_estimated_delivery_date** | **Date** |  | [optional] |
| **total_days** | **Integer** |  |  |
| **total_business_days** | **Integer** |  |  |
| **fee** | [**PaymentFee**](PaymentFee.md) |  |  |
| **type** | [**DeliveryPreferenceType**](DeliveryPreferenceType.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::DeliveryPreference.new(
  min_estimated_delivery_date: null,
  max_estimated_delivery_date: null,
  total_days: null,
  total_business_days: null,
  fee: null,
  type: null
)
```

