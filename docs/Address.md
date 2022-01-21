# MelioPlatformApiClient::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line1** | **String** | Note that this field must be authentic (e.g. &#x60;Q Calle 11&#x60;). |  |
| **line2** | **String** |  | [optional] |
| **city** | **String** |  |  |
| **state** | **String** | State two-letter symbol. |  |
| **postal_code** | **String** | 5 digits postal (ZIP) code. |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::Address.new(
  line1: null,
  line2: null,
  city: null,
  state: null,
  postal_code: null
)
```

