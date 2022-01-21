# MelioPlatformApiClient::PostCheckoutsCheckoutIdCompleteRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **funding_source_id** | **String** | Identifier of the entity. |  |
| **financing_token** | **String** | Optional. Obtain a financing token by request Transactional Financing. | [optional] |
| **buyer_ip** | **String** |  | [optional] |
| **buyer_user_agent** | **String** | Required if calling from backend on behalf of buyer | [optional] |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::PostCheckoutsCheckoutIdCompleteRequest.new(
  funding_source_id: null,
  financing_token: null,
  buyer_ip: null,
  buyer_user_agent: null
)
```

