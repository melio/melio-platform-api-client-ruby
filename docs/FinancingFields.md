# MelioPlatformApiClient::FinancingFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_key** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **validation_regex** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **placeholder** | **String** |  | [optional] |
| **dropdown_options** | [**Array&lt;FinancingDropdownOptions&gt;**](FinancingDropdownOptions.md) |  | [optional] |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::FinancingFields.new(
  field_key: null,
  label: null,
  validation_regex: null,
  type: null,
  placeholder: null,
  dropdown_options: null
)
```

