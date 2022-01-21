# MelioPlatformApiClient::VendorDirectoryContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **phone_number** | **String** | Holds a phone number - the format is flexible as is determined according to usage. For testing you can use &#x60;123123122&#x60;. | [optional] |
| **email** | **String** |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::VendorDirectoryContact.new(
  first_name: null,
  last_name: null,
  phone_number: null,
  email: null
)
```

