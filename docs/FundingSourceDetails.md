# MelioPlatformApiClient::FundingSourceDetails

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'melio-platform-api-client'

MelioPlatformApiClient::FundingSourceDetails.openapi_one_of
# =>
# [
#   :'BankAccount',
#   :'Card'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'melio-platform-api-client'

MelioPlatformApiClient::FundingSourceDetails.build(data)
# => #<BankAccount:0x00007fdd4aab02a0>

MelioPlatformApiClient::FundingSourceDetails.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `BankAccount`
- `Card`
- `nil` (if no type matches)

