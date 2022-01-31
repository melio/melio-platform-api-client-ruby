# Melio Platform API Ruby Client Library

Melio Platform API enables partners to perform partner-related operations in Melio's system, for themselves, and on behalf of their system's users.

Developers can use this OpenAPI based client library in order to send API requests to Melio Platform API.

Refer to our [API Reference](https://docs.melio.com/docs/api-ref/YXBpOjM0ODE4MDA4-platform-api) for further information.

## Getting started

### Installation

Add the following in the Gemfile:

```
gem 'melio-platform-api-client', :git => 'https://github.com/melio/melio-platform-api-client-ruby.git', :tag => 'v1.0.1'
```

Change `:tag => 'v1.0.1` to the version you need.

### Setup

Before using the library, you need to load and configure it with the relevant parameters:

1. The host and base URL, which represent the environment you want to work with.
2. Your credentials, which are usually the Partner secret provided during onboarding, set as a `API-Key` header.

```ruby
# Load the gem
require 'melio-platform-api-client'

# Setup
MelioPlatformApiClient.configure do |config|
  # Configure host
  config.host = 'api-sandbox.melio.com'
  
  # Optionally toggle debugging
  # config.debugging = true
  
  # Configure API key authorization: API-Key
  config.api_key['ApiKey'] = 'YOUR API KEY'
end
```

### Send an API request

Once everything is configured properly, initialize one of the `*Api` modules in you application, and invoke one of the available functions.
The functions in each module represent the API operations, as they appear in our [API Reference](https://docs.melio.com/docs/api-ref/YXBpOjM0ODE4MDA4-platform-api).

```ruby
api_instance = MelioPlatformApiClient::AccountsApi.new

begin
  #Retrieve all Accounts
  result = api_instance.get_accounts
  p result
rescue MelioPlatformApiClient::ApiError => e
  puts "Exception when calling AccountsApi->get_accounts: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.melio.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*MelioPlatformApiClient::AccountsApi* | [**get_accounts**](docs/AccountsApi.md#get_accounts) | **GET** /accounts | Retrieve all Accounts
*MelioPlatformApiClient::AccountsApi* | [**get_accounts_account_id**](docs/AccountsApi.md#get_accounts_account_id) | **GET** /accounts/{accountId} | Retrieve an Account
*MelioPlatformApiClient::AccountsApi* | [**post_accounts**](docs/AccountsApi.md#post_accounts) | **POST** /accounts | Create an Account
*MelioPlatformApiClient::AuthApi* | [**post_auth_token**](docs/AuthApi.md#post_auth_token) | **POST** /auth/token | Create an access token
*MelioPlatformApiClient::ChargesApi* | [**delete_charges_charge_id**](docs/ChargesApi.md#delete_charges_charge_id) | **DELETE** /charges/{chargeId} | Delete a Charge
*MelioPlatformApiClient::ChargesApi* | [**get_charges_charge_id**](docs/ChargesApi.md#get_charges_charge_id) | **GET** /charges/{chargeId} | Retrieve a Charge
*MelioPlatformApiClient::ChargesApi* | [**get_merchants_merchant_id_charges**](docs/ChargesApi.md#get_merchants_merchant_id_charges) | **GET** /merchants/{merchantId}/charges | Retrieve all Charges
*MelioPlatformApiClient::ChargesApi* | [**patch_charges_charge_id**](docs/ChargesApi.md#patch_charges_charge_id) | **PATCH** /charges/{chargeId} | Update a Charge
*MelioPlatformApiClient::CheckoutsApi* | [**get_checkouts_checkout_id**](docs/CheckoutsApi.md#get_checkouts_checkout_id) | **GET** /checkouts/{checkoutId} | Retrieve a Checkout
*MelioPlatformApiClient::CheckoutsApi* | [**post_checkouts**](docs/CheckoutsApi.md#post_checkouts) | **POST** /merchants/{merchantId}/checkouts | Create a Checkout
*MelioPlatformApiClient::CheckoutsApi* | [**post_checkouts_checkout_id_capture**](docs/CheckoutsApi.md#post_checkouts_checkout_id_capture) | **POST** /checkouts/{checkoutId}/capture | Capture a Checkout
*MelioPlatformApiClient::CheckoutsApi* | [**post_checkouts_checkout_id_complete**](docs/CheckoutsApi.md#post_checkouts_checkout_id_complete) | **POST** /checkouts/{checkoutId}/complete | Complete a Checkout
*MelioPlatformApiClient::DeliveryMethodsApi* | [**delete_delivery_methods_delivery_method_id**](docs/DeliveryMethodsApi.md#delete_delivery_methods_delivery_method_id) | **DELETE** /delivery-methods/{deliveryMethodId} | Delete a Delivery Method
*MelioPlatformApiClient::DeliveryMethodsApi* | [**get_delivery_methods**](docs/DeliveryMethodsApi.md#get_delivery_methods) | **GET** /delivery-methods | Retrieve all Delivery Methods
*MelioPlatformApiClient::DeliveryMethodsApi* | [**get_delivery_methods_delivery_method_id**](docs/DeliveryMethodsApi.md#get_delivery_methods_delivery_method_id) | **GET** /delivery-methods/{deliveryMethodId} | Retrieve a Delivery Method
*MelioPlatformApiClient::DeliveryMethodsApi* | [**get_vendors_vendor_id_delivery_methods**](docs/DeliveryMethodsApi.md#get_vendors_vendor_id_delivery_methods) | **GET** /vendors/{vendorId}/delivery-methods | Retrieve a Vendor's Delivery Methods
*MelioPlatformApiClient::DeliveryMethodsApi* | [**post_delivery_methods**](docs/DeliveryMethodsApi.md#post_delivery_methods) | **POST** /delivery-methods | Create a Delivery Method
*MelioPlatformApiClient::DeliveryMethodsApi* | [**post_vendors_vendor_id_delivery_methods**](docs/DeliveryMethodsApi.md#post_vendors_vendor_id_delivery_methods) | **POST** /vendors/{vendorId}/delivery-methods | Create a Vendor's Delivery Method
*MelioPlatformApiClient::FilesApi* | [**get_files**](docs/FilesApi.md#get_files) | **GET** /files | Retrieve files
*MelioPlatformApiClient::FilesApi* | [**get_files_file_id**](docs/FilesApi.md#get_files_file_id) | **GET** /files/{fileId} | Retrieve a File
*MelioPlatformApiClient::FilesApi* | [**get_files_file_id_data**](docs/FilesApi.md#get_files_file_id_data) | **GET** /files/{fileId}/data | Retrieve data from a File using OCR
*MelioPlatformApiClient::FilesApi* | [**post_files**](docs/FilesApi.md#post_files) | **POST** /files | Create / upload a File
*MelioPlatformApiClient::FinancingApi* | [**get_financing_status**](docs/FinancingApi.md#get_financing_status) | **GET** /financing | Retrieve an Account's financing status
*MelioPlatformApiClient::FinancingApi* | [**post_financing**](docs/FinancingApi.md#post_financing) | **POST** /financing | Apply for financing for an Account
*MelioPlatformApiClient::FinancingApi* | [**post_financing_transaction**](docs/FinancingApi.md#post_financing_transaction) | **POST** /financing/transaction | Request Transactional Financing
*MelioPlatformApiClient::FundingSourcesApi* | [**delete_funding_sources_funding_source_id**](docs/FundingSourcesApi.md#delete_funding_sources_funding_source_id) | **DELETE** /funding-sources/{fundingSourceId} | Delete a Funding Source
*MelioPlatformApiClient::FundingSourcesApi* | [**get_funding_sources**](docs/FundingSourcesApi.md#get_funding_sources) | **GET** /funding-sources | Get all Funding Sources
*MelioPlatformApiClient::FundingSourcesApi* | [**get_funding_sources_funding_source_id**](docs/FundingSourcesApi.md#get_funding_sources_funding_source_id) | **GET** /funding-sources/{fundingSourceId} | Retrieve a Funding Source
*MelioPlatformApiClient::FundingSourcesApi* | [**post_funding_sources**](docs/FundingSourcesApi.md#post_funding_sources) | **POST** /funding-sources | Create a Funding Source
*MelioPlatformApiClient::MerchantsApi* | [**post_merchants**](docs/MerchantsApi.md#post_merchants) | **POST** /merchants | Create a Merchant
*MelioPlatformApiClient::PaymentIntentsApi* | [**get_payment_intents**](docs/PaymentIntentsApi.md#get_payment_intents) | **GET** /payment-intents | Retrieve all Payment Intents
*MelioPlatformApiClient::PaymentIntentsApi* | [**get_payment_intents_payment_intent_id**](docs/PaymentIntentsApi.md#get_payment_intents_payment_intent_id) | **GET** /payment-intents/{paymentIntentId} | Retrieve a Payment Intent
*MelioPlatformApiClient::PaymentIntentsApi* | [**patch_payment_intents_payment_intent_id**](docs/PaymentIntentsApi.md#patch_payment_intents_payment_intent_id) | **PATCH** /payment-intents/{paymentIntentId} | Update a Payment Intent
*MelioPlatformApiClient::PaymentIntentsApi* | [**post_payment_intents**](docs/PaymentIntentsApi.md#post_payment_intents) | **POST** /payment-intents | Create a Payment Intent
*MelioPlatformApiClient::PaymentIntentsApi* | [**post_payment_intents_bulk**](docs/PaymentIntentsApi.md#post_payment_intents_bulk) | **POST** /payment-intents/bulk | Create multiple Payment Intents
*MelioPlatformApiClient::PaymentIntentsApi* | [**post_payment_intents_payment_intent_id_confirm**](docs/PaymentIntentsApi.md#post_payment_intents_payment_intent_id_confirm) | **POST** /payment-intents/{paymentIntentId}/confirm | Confirm a Payment Intent
*MelioPlatformApiClient::PaymentsApi* | [**delete_payments_payment_id**](docs/PaymentsApi.md#delete_payments_payment_id) | **DELETE** /payments/{paymentId} | Delete a Payment
*MelioPlatformApiClient::PaymentsApi* | [**get_payments**](docs/PaymentsApi.md#get_payments) | **GET** /payments | Retrieve all Payments of a PaymentIntent
*MelioPlatformApiClient::PaymentsApi* | [**get_payments_payment_id**](docs/PaymentsApi.md#get_payments_payment_id) | **GET** /payments/{paymentId} | Retrieve a Payment
*MelioPlatformApiClient::PaymentsApi* | [**recover_payment_payment_id**](docs/PaymentsApi.md#recover_payment_payment_id) | **POST** /payments/{paymentId}/recover | Recover a Payment
*MelioPlatformApiClient::VendorDirectoryApi* | [**get_vendor_directory**](docs/VendorDirectoryApi.md#get_vendor_directory) | **GET** /vendor-directory | Retrieve all filtered Vendors in the Vendor Directory
*MelioPlatformApiClient::VendorDirectoryApi* | [**post_vendors_from_vendor_directory**](docs/VendorDirectoryApi.md#post_vendors_from_vendor_directory) | **POST** /vendors/from-vendor-directory | Create a Vendor from Vendor Directory
*MelioPlatformApiClient::VendorsApi* | [**delete_vendors_vendor_id**](docs/VendorsApi.md#delete_vendors_vendor_id) | **DELETE** /vendors/{vendorId} | Delete a Vendor
*MelioPlatformApiClient::VendorsApi* | [**get_vendor_directory**](docs/VendorsApi.md#get_vendor_directory) | **GET** /vendor-directory | Retrieve all filtered Vendors in the Vendor Directory
*MelioPlatformApiClient::VendorsApi* | [**get_vendors**](docs/VendorsApi.md#get_vendors) | **GET** /vendors | Retrieve all Vendors
*MelioPlatformApiClient::VendorsApi* | [**get_vendors_vendor_id**](docs/VendorsApi.md#get_vendors_vendor_id) | **GET** /vendors/{vendorId} | Retrieve a Vendor
*MelioPlatformApiClient::VendorsApi* | [**get_vendors_vendor_id_delivery_methods**](docs/VendorsApi.md#get_vendors_vendor_id_delivery_methods) | **GET** /vendors/{vendorId}/delivery-methods | Retrieve a Vendor's Delivery Methods
*MelioPlatformApiClient::VendorsApi* | [**patch_vendors_vendor_id**](docs/VendorsApi.md#patch_vendors_vendor_id) | **PATCH** /vendors/{vendorId} | Update a Vendor
*MelioPlatformApiClient::VendorsApi* | [**post_vendors**](docs/VendorsApi.md#post_vendors) | **POST** /vendors | Create a Vendor
*MelioPlatformApiClient::VendorsApi* | [**post_vendors_bulk**](docs/VendorsApi.md#post_vendors_bulk) | **POST** /vendors/bulk | Create multiple Vendors
*MelioPlatformApiClient::VendorsApi* | [**post_vendors_from_vendor_directory**](docs/VendorsApi.md#post_vendors_from_vendor_directory) | **POST** /vendors/from-vendor-directory | Create a Vendor from Vendor Directory
*MelioPlatformApiClient::VendorsApi* | [**post_vendors_vendor_id_delivery_methods**](docs/VendorsApi.md#post_vendors_vendor_id_delivery_methods) | **POST** /vendors/{vendorId}/delivery-methods | Create a Vendor's Delivery Method
*MelioPlatformApiClient::WebhooksApi* | [**delete_webhooks_checkouts**](docs/WebhooksApi.md#delete_webhooks_checkouts) | **DELETE** /webhooks/checkouts | Delete the Webhook for Checkouts
*MelioPlatformApiClient::WebhooksApi* | [**delete_webhooks_payments**](docs/WebhooksApi.md#delete_webhooks_payments) | **DELETE** /webhooks/payments | Delete the Webhook for Payments
*MelioPlatformApiClient::WebhooksApi* | [**get_webhooks**](docs/WebhooksApi.md#get_webhooks) | **GET** /webhooks | Retrieve all Webhooks
*MelioPlatformApiClient::WebhooksApi* | [**get_webhooks_checkouts**](docs/WebhooksApi.md#get_webhooks_checkouts) | **GET** /webhooks/checkouts | Retrieve Status of Webhook for Checkouts
*MelioPlatformApiClient::WebhooksApi* | [**get_webhooks_payments**](docs/WebhooksApi.md#get_webhooks_payments) | **GET** /webhooks/payments | Retrieve Status of Webhook for Payments
*MelioPlatformApiClient::WebhooksApi* | [**post_webhooks_checkouts**](docs/WebhooksApi.md#post_webhooks_checkouts) | **POST** /webhooks/checkouts | Register a Webhook for Checkouts
*MelioPlatformApiClient::WebhooksApi* | [**post_webhooks_payments**](docs/WebhooksApi.md#post_webhooks_payments) | **POST** /webhooks/payments | Register a Webhook for Payments


## Support

For more information, please contact [api-support@melio.com](mailto:api-support@melio.com).
