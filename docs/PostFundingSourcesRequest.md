# MelioPlatformApiClient::PostFundingSourcesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **details** | [**OneOfBankAccountPlaidDetailsTabaPayDetails**](OneOfBankAccountPlaidDetailsTabaPayDetails.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PostFundingSourcesRequest.new(
  display_name: null,
  type: null,
  details: null
)
```

