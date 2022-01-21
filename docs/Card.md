# MelioPlatformApiClient::Card

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **expiration_month** | **String** | Two-digits month (e.g. &#x60;01&#x60; or &#x60;11&#x60;) |  |
| **expiration_year** | **String** | Four-digits year (e.g. &#x60;2024&#x60;). |  |
| **last_four_digits** | **String** | LAst four digits of a payment card. |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::Card.new(
  type: null,
  expiration_month: null,
  expiration_year: null,
  last_four_digits: null
)
```

