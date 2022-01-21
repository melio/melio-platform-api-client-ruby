# MelioPlatformApiClient::Vendor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the entity. |  |
| **history** | [**ShortHistory**](ShortHistory.md) |  |  |
| **name** | **String** | The (company) name of the Vendor as a business entity. |  |
| **contact** | [**VendorAllOfContact**](VendorAllOfContact.md) |  |  |
| **delivery_methods** | [**Array&lt;DeliveryMethod&gt;**](DeliveryMethod.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::Vendor.new(
  id: null,
  history: null,
  name: null,
  contact: null,
  delivery_methods: null
)
```

