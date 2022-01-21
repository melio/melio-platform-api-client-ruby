# MelioPlatformApiClient::PartialAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line1** | **String** | Note that this field must be authentic (e.g. &#x60;Q Calle 11&#x60;). | [optional] |
| **line2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** | State two-letter symbol. | [optional] |
| **postal_code** | **String** | 5 digits postal (ZIP) code. | [optional] |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PartialAddress.new(
  line1: null,
  line2: null,
  city: null,
  state: null,
  postal_code: null
)
```

