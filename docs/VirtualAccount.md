# MelioPlatformApiClient::VirtualAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expires_at** | **Time** |  | [optional] |
| **phone_number** | **String** | Holds a phone number - the format is flexible as is determined according to usage. For testing you can use &#x60;123123122&#x60;. | [optional] |
| **email** | **String** |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::VirtualAccount.new(
  expires_at: null,
  phone_number: null,
  email: null
)
```

