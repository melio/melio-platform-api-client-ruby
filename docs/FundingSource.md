# MelioPlatformApiClient::FundingSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the entity. |  |
| **history** | [**ShortHistory**](ShortHistory.md) |  |  |
| **display_name** | **String** |  | [optional] |
| **type** | [**FundingSourceType**](FundingSourceType.md) |  |  |
| **details** | [**FundingSourceDetails**](FundingSourceDetails.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::FundingSource.new(
  id: null,
  history: null,
  display_name: null,
  type: null,
  details: null
)
```

