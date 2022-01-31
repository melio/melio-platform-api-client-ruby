# MelioPlatformApiClient::AccountAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company** | [**Company**](Company.md) |  |  |
| **user** | [**Person**](Person.md) |  |  |
| **status** | **String** | Holds the eligibility of the account to make payments |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::AccountAllOf.new(
  company: null,
  user: null,
  status: pending
)
```

