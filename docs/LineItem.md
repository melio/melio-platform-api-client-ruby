# MelioPlatformApiClient::LineItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the item |  |
| **description** | **String** | Description of the item | [optional] |
| **sku** | **String** | Stock keeping unit code | [optional] |
| **unit_price** | **Integer** |  | [optional] |
| **quantity** | **Integer** | Item quantity | [optional] |
| **total_price** | **Integer** |  |  |
| **image_url** | **String** |  | [optional] |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::LineItem.new(
  name: Yavor office chair,
  description: Ergonomic chair with neck support,
  sku: U10001,
  unit_price: null,
  quantity: 2,
  total_price: null,
  image_url: null
)
```

