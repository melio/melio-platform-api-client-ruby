# MelioPlatformApiClient::TabaPayDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tabapay_token** | **String** |  |  |
| **card_bin** | **String** |  |  |
| **expiration_month** | **String** | Two-digits month (e.g. &#x60;01&#x60; or &#x60;11&#x60;) |  |
| **expiration_year** | **String** | Four-digits year (e.g. &#x60;2024&#x60;). |  |
| **card_owner** | [**TabaPayDetailsCardOwner**](TabaPayDetailsCardOwner.md) |  |  |
| **last_four_digits** | **String** | LAst four digits of a payment card. |  |
| **address** | [**Address**](Address.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::TabaPayDetails.new(
  tabapay_token: null,
  card_bin: null,
  expiration_month: null,
  expiration_year: null,
  card_owner: null,
  last_four_digits: null,
  address: null
)
```

