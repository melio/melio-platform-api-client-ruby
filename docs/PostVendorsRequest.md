# MelioPlatformApiClient::PostVendorsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The (company) name of the Vendor as a business entity. |  |
| **contact** | [**VendorAllOfContact**](VendorAllOfContact.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PostVendorsRequest.new(
  name: null,
  contact: null
)
```

