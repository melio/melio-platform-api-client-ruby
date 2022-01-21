# MelioPlatformApiClient::VendorDirectory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **delivery_methods** | [**Array&lt;VendorDirectoryDeliveryMethod&gt;**](VendorDirectoryDeliveryMethod.md) |  |  |
| **addresses** | [**Array&lt;Address&gt;**](Address.md) |  |  |
| **contact** | [**VendorDirectoryContact**](VendorDirectoryContact.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::VendorDirectory.new(
  id: null,
  name: null,
  delivery_methods: null,
  addresses: null,
  contact: null
)
```

