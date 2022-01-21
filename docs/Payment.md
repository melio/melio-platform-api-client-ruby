# MelioPlatformApiClient::Payment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the entity. |  |
| **history** | [**ShortHistory**](ShortHistory.md) |  |  |
| **amount** | **Integer** |  |  |
| **currency** | [**Currency**](Currency.md) |  | [default to &#39;USD&#39;] |
| **scheduled_date** | **Date** |  |  |
| **note** | **String** | A note that is attached to this Payment. | [optional] |
| **balance** | **Integer** |  | [optional] |
| **is_recoverable** | **Boolean** | Flags whether this Payment can be recovered by providing alternative details, suing the &#x60;POST /payments/{paymentId}/recover&#x60; endpoint. |  |
| **vendor_id** | **String** | Identifier of the entity. | [optional] |
| **funding_source_id** | **String** | Identifier of the entity. |  |
| **delivery_method_id** | **String** | Identifier of the entity. |  |
| **status** | **String** | The current status of this Payment. |  |
| **estimated_delivery** | **Date** |  |  |
| **fees** | [**Array&lt;PaymentFee&gt;**](PaymentFee.md) | Fees to be charged, based on this Payments details and preferences. |  |
| **failed_message** | **String** | The message that can be shown in case of a failure. | [optional] |
| **max_estimated_delivery** | **Date** |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::Payment.new(
  id: null,
  history: null,
  amount: null,
  currency: null,
  scheduled_date: null,
  note: null,
  balance: null,
  is_recoverable: null,
  vendor_id: null,
  funding_source_id: null,
  delivery_method_id: null,
  status: null,
  estimated_delivery: null,
  fees: null,
  failed_message: null,
  max_estimated_delivery: null
)
```

