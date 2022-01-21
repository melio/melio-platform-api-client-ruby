# MelioPlatformApiClient::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the entity. |  |
| **history** | [**ShortHistory**](ShortHistory.md) |  |  |
| **company** | [**Company**](Company.md) |  |  |
| **user** | [**Person**](Person.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::Account.new(
  id: null,
  history: null,
  company: null,
  user: null
)
```

