# MelioPlatformApiClient::PostFinancingTransactionalRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | USD amount for financing, in cents | [optional] |
| **payee_account_id** | **String** |  | [optional] |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PostFinancingTransactionalRequest.new(
  amount: 150000,
  payee_account_id: null
)
```

