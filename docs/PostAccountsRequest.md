# MelioPlatformApiClient::PostAccountsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the entity. | [optional] |
| **company** | [**Company**](Company.md) |  |  |
| **user** | [**Person**](Person.md) |  |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PostAccountsRequest.new(
  id: null,
  company: null,
  user: null
)
```

