# MelioPlatformApiClient::PostPaymentsPaymentIdRecoverRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **funding_source_id** | **String** | Identifier of the entity. |  |
| **delivery_method_id** | **String** | Identifier of the entity. |  |
| **note** | **String** |  | [optional] |
| **scheduled_date** | **Date** |  |  |
| **selected_delivery_preference** | **String** |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PostPaymentsPaymentIdRecoverRequest.new(
  funding_source_id: null,
  delivery_method_id: null,
  note: null,
  scheduled_date: null,
  selected_delivery_preference: null
)
```

