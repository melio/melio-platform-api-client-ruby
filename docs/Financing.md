# MelioPlatformApiClient::Financing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fields** | [**Array&lt;FinancingFields&gt;**](FinancingFields.md) | Qualification requests may require different fields for different types of companies. Use this data in order to render a form according to the required fields. Then, call the matching POST /financing request with the collected data. |  |
| **terms_of_service** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **balance** | **Integer** |  | [optional] |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::Financing.new(
  fields: null,
  terms_of_service: null,
  status: null,
  balance: null
)
```

