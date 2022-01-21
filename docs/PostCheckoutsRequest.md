# MelioPlatformApiClient::PostCheckoutsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line_items** | [**Array&lt;LineItem&gt;**](LineItem.md) |  |  |
| **tax_items** | [**Array&lt;Adjustment&gt;**](Adjustment.md) |  | [optional] |
| **shipping_address** | [**Address**](Address.md) |  |  |
| **billing_address** | [**Address**](Address.md) |  |  |
| **currency** | [**Currency**](Currency.md) |  | [optional][default to &#39;USD&#39;] |
| **tax_total** | **Integer** |  |  |
| **coupon_items** | [**Array&lt;Adjustment&gt;**](Adjustment.md) |  | [optional] |
| **subtotal** | **Integer** |  |  |
| **shipping_cost_total** | **Integer** |  | [optional] |
| **grand_total** | **Integer** |  |  |
| **store_credit** | **Integer** |  | [optional] |
| **gift_certificates** | [**Array&lt;Adjustment&gt;**](Adjustment.md) | List of applied gift certificates | [optional] |
| **outstanding_balance** | **Integer** | Actual amount to charge the buyer using Melio, equals &#x60;grandTotal&#x60; minus store credit used and gift certificates applied |  |
| **buyer** | [**CheckoutAllOfBuyer**](CheckoutAllOfBuyer.md) |  |  |
| **return_url** | **String** |  | [optional] |
| **company_name** | **String** |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PostCheckoutsRequest.new(
  line_items: null,
  tax_items: null,
  shipping_address: null,
  billing_address: null,
  currency: null,
  tax_total: null,
  coupon_items: null,
  subtotal: null,
  shipping_cost_total: null,
  grand_total: null,
  store_credit: null,
  gift_certificates: null,
  outstanding_balance: null,
  buyer: null,
  return_url: null,
  company_name: null
)
```

