# MelioPlatformApiClient::VendorAllOfContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Full name of the Vendor&#39;s main contact. |  |
| **email** | **String** |  |  |
| **phone_number** | **String** | Holds a phone number - the format is flexible as is determined according to usage. For testing you can use &#x60;123123122&#x60;. |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::VendorAllOfContact.new(
  name: null,
  email: null,
  phone_number: null
)
```

