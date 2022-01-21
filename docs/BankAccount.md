# MelioPlatformApiClient::BankAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **routing_number** | **String** | Routing numbers are 9 digits long. |  |
| **account_type** | [**BankAccountType**](BankAccountType.md) |  |  |
| **account_number** | **String** | Account numbers are 4-17 digits long |  |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::BankAccount.new(
  routing_number: null,
  account_type: null,
  account_number: null
)
```

