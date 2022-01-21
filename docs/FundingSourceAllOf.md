# MelioPlatformApiClient::FundingSourceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** |  | [optional] |
| **type** | [**FundingSourceType**](FundingSourceType.md) |  |  |
| **details** | [**OneOfBankAccountCard**](OneOfBankAccountCard.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::FundingSourceAllOf.new(
  display_name: null,
  type: null,
  details: null
)
```

