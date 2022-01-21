# MelioPlatformApiClient::VendorAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The (company) name of the Vendor as a business entity. |  |
| **contact** | [**VendorAllOfContact**](VendorAllOfContact.md) |  |  |
| **delivery_methods** | [**Array&lt;DeliveryMethod&gt;**](DeliveryMethod.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::VendorAllOf.new(
  name: null,
  contact: null,
  delivery_methods: null
)
```

