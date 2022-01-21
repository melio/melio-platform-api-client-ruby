# MelioPlatformApiClient::CheckoutAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_id** | **String** | Identifier of the entity. |  |
| **net_terms** | **Integer** | Payment terms in integer (net 15/30/60/etc) |  |
| **line_items** | [**Array&lt;LineItem&gt;**](LineItem.md) | Line items composing the buyer&#39;s cart |  |
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
| **gift_certificates** | [**Array&lt;Adjustment&gt;**](Adjustment.md) |  | [optional] |
| **outstanding_balance** | **Integer** |  |  |
| **buyer** | [**CheckoutAllOfBuyer**](CheckoutAllOfBuyer.md) |  | [optional] |
| **company_name** | **String** |  |  |
| **status** | **String** |  |  |
| **has_contact_details** | **Boolean** | Equals &#x60;true&#x60; if billing contact&#39;s details were collected |  |
| **has_payment_details** | **Boolean** | Equals &#x60;true&#x60; if payment details were collected |  |
| **due_date** | **Date** |  | [optional] |
| **checkout_url** | **String** |  | [optional] |
| **charge_id** | **String** | Identifier of the entity. | [optional] |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::CheckoutAllOf.new(
  merchant_id: null,
  net_terms: null,
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
  company_name: null,
  status: null,
  has_contact_details: null,
  has_payment_details: null,
  due_date: null,
  checkout_url: null,
  charge_id: null
)
```

