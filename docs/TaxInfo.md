# MelioPlatformApiClient::TaxInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | A string with 9 digits. Can be in one of three formats: * NNNNNNNNN * NNN-NN-NNNN * NN-NNNNNNN |  |
| **type** | **String** |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::TaxInfo.new(
  identifier: null,
  type: null
)
```

