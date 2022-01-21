# MelioPlatformApiClient::PostVendorsFromVendorDirectoryRequestDeliveryMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**DeliveryMethodType**](DeliveryMethodType.md) |  |  |
| **biller_account_identifier** | **String** | This is your biller account identifier that the DM will be created | [optional] |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PostVendorsFromVendorDirectoryRequestDeliveryMethod.new(
  type: null,
  biller_account_identifier: null
)
```

