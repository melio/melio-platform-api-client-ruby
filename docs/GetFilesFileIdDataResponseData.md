# MelioPlatformApiClient::GetFilesFileIdDataResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  | [optional] |
| **due_date** | **Date** |  | [optional] |
| **customer_info** | [**GetFilesFileIdDataResponseDataCustomerInfo**](GetFilesFileIdDataResponseDataCustomerInfo.md) |  | [optional] |
| **vendor_info** | [**GetFilesFileIdDataResponseDataVendorInfo**](GetFilesFileIdDataResponseDataVendorInfo.md) |  | [optional] |
| **invoice_info** | [**GetFilesFileIdDataResponseDataInvoiceInfo**](GetFilesFileIdDataResponseDataInvoiceInfo.md) |  | [optional] |

## Example

```ruby
require 'melio-platform-api-client'

instance = MelioPlatformApiClient::GetFilesFileIdDataResponseData.new(
  amount: null,
  due_date: null,
  customer_info: null,
  vendor_info: null,
  invoice_info: null
)
```

