=begin
#Platform API

#Melio Platform API enables partners to perform partner-related operations in Melio's system, for themselves, and on behalf of their system's users.

The version of the OpenAPI document: 1.0
Contact: platform@melio.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

# Common files
require 'melio-platform-api-client/api_client'
require 'melio-platform-api-client/api_error'
require 'melio-platform-api-client/version'
require 'melio-platform-api-client/configuration'

# Models
require 'melio-platform-api-client/models/account'
require 'melio-platform-api-client/models/account_all_of'
require 'melio-platform-api-client/models/add_to_my_vendor_parameters'
require 'melio-platform-api-client/models/add_to_my_vendor_parameters_delivery_method'
require 'melio-platform-api-client/models/add_to_my_vendor_parameters_delivery_method_biller_account'
require 'melio-platform-api-client/models/address'
require 'melio-platform-api-client/models/adjustment'
require 'melio-platform-api-client/models/bank_account'
require 'melio-platform-api-client/models/bank_account_type'
require 'melio-platform-api-client/models/biller_account'
require 'melio-platform-api-client/models/card'
require 'melio-platform-api-client/models/charge'
require 'melio-platform-api-client/models/charge_all_of'
require 'melio-platform-api-client/models/checkout'
require 'melio-platform-api-client/models/checkout_all_of'
require 'melio-platform-api-client/models/checkout_all_of_buyer'
require 'melio-platform-api-client/models/company'
require 'melio-platform-api-client/models/confirm_payment_intents_response'
require 'melio-platform-api-client/models/currency'
require 'melio-platform-api-client/models/deleted_response'
require 'melio-platform-api-client/models/delivery_method'
require 'melio-platform-api-client/models/delivery_method_all_of'
require 'melio-platform-api-client/models/delivery_method_type'
require 'melio-platform-api-client/models/delivery_preference'
require 'melio-platform-api-client/models/delivery_preference_type'
require 'melio-platform-api-client/models/domestic_wire_account'
require 'melio-platform-api-client/models/domestic_wire_account_address'
require 'melio-platform-api-client/models/error_response'
require 'melio-platform-api-client/models/file_info'
require 'melio-platform-api-client/models/file_info_all_of'
require 'melio-platform-api-client/models/financing'
require 'melio-platform-api-client/models/financing_dropdown_options'
require 'melio-platform-api-client/models/financing_fields'
require 'melio-platform-api-client/models/funding_source'
require 'melio-platform-api-client/models/funding_source_all_of'
require 'melio-platform-api-client/models/funding_source_type'
require 'melio-platform-api-client/models/get_accounts_account_id_response'
require 'melio-platform-api-client/models/get_accounts_response'
require 'melio-platform-api-client/models/get_charges_charge_id_response'
require 'melio-platform-api-client/models/get_charges_response'
require 'melio-platform-api-client/models/get_checkouts_checkout_id_response'
require 'melio-platform-api-client/models/get_delivery_methods_delivery_method_id_response'
require 'melio-platform-api-client/models/get_delivery_methods_response'
require 'melio-platform-api-client/models/get_files_file_id_data_response'
require 'melio-platform-api-client/models/get_files_file_id_data_response_data'
require 'melio-platform-api-client/models/get_files_file_id_data_response_data_customer_info'
require 'melio-platform-api-client/models/get_files_file_id_data_response_data_invoice_info'
require 'melio-platform-api-client/models/get_files_file_id_data_response_data_vendor_info'
require 'melio-platform-api-client/models/get_files_file_id_response'
require 'melio-platform-api-client/models/get_files_response'
require 'melio-platform-api-client/models/get_financing_response'
require 'melio-platform-api-client/models/get_funding_sources_funding_source_id_response'
require 'melio-platform-api-client/models/get_funding_sources_response'
require 'melio-platform-api-client/models/get_payment_intents_payment_intent_id_response'
require 'melio-platform-api-client/models/get_payment_intents_response'
require 'melio-platform-api-client/models/get_payments_payment_id_response'
require 'melio-platform-api-client/models/get_payments_response'
require 'melio-platform-api-client/models/get_vendor_directory_response'
require 'melio-platform-api-client/models/get_vendors_response'
require 'melio-platform-api-client/models/get_vendors_vendor_id_delivery_methods_response'
require 'melio-platform-api-client/models/get_vendors_vendor_id_response'
require 'melio-platform-api-client/models/get_webhooks_checkouts_response'
require 'melio-platform-api-client/models/get_webhooks_payments_response'
require 'melio-platform-api-client/models/get_webhooks_response'
require 'melio-platform-api-client/models/invoice'
require 'melio-platform-api-client/models/line_item'
require 'melio-platform-api-client/models/merchant'
require 'melio-platform-api-client/models/merchant_all_of'
require 'melio-platform-api-client/models/model_error'
require 'melio-platform-api-client/models/model_error_all_of'
require 'melio-platform-api-client/models/object'
require 'melio-platform-api-client/models/paper_check'
require 'melio-platform-api-client/models/partial_address'
require 'melio-platform-api-client/models/patch_payment_intents_payment_intent_id_request'
require 'melio-platform-api-client/models/patch_payment_intents_payment_intent_id_request_bill_info'
require 'melio-platform-api-client/models/patch_payment_intents_payment_intent_id_response'
require 'melio-platform-api-client/models/patch_vendors_vendor_id_request'
require 'melio-platform-api-client/models/patch_vendors_vendor_id_request_contact'
require 'melio-platform-api-client/models/patch_vendors_vendor_id_response'
require 'melio-platform-api-client/models/payment'
require 'melio-platform-api-client/models/payment_all_of'
require 'melio-platform-api-client/models/payment_fee'
require 'melio-platform-api-client/models/payment_intent'
require 'melio-platform-api-client/models/payment_intent_all_of'
require 'melio-platform-api-client/models/payment_intent_all_of_bill_info'
require 'melio-platform-api-client/models/person'
require 'melio-platform-api-client/models/plaid_details'
require 'melio-platform-api-client/models/post_accounts_request'
require 'melio-platform-api-client/models/post_accounts_response'
require 'melio-platform-api-client/models/post_auth_response'
require 'melio-platform-api-client/models/post_auth_response_data'
require 'melio-platform-api-client/models/post_checkouts_checkout_id_capture_request'
require 'melio-platform-api-client/models/post_checkouts_checkout_id_capture_request_invoice'
require 'melio-platform-api-client/models/post_checkouts_checkout_id_complete_request'
require 'melio-platform-api-client/models/post_checkouts_request'
require 'melio-platform-api-client/models/post_checkouts_response'
require 'melio-platform-api-client/models/post_delivery_methods_request'
require 'melio-platform-api-client/models/post_delivery_methods_response'
require 'melio-platform-api-client/models/post_files_response'
require 'melio-platform-api-client/models/post_financing_request'
require 'melio-platform-api-client/models/post_financing_request_fields'
require 'melio-platform-api-client/models/post_financing_response'
require 'melio-platform-api-client/models/post_financing_transactional_request'
require 'melio-platform-api-client/models/post_financing_transactional_response'
require 'melio-platform-api-client/models/post_financing_transactional_response_data'
require 'melio-platform-api-client/models/post_funding_sources_request'
require 'melio-platform-api-client/models/post_funding_sources_response'
require 'melio-platform-api-client/models/post_merchants_request'
require 'melio-platform-api-client/models/post_merchants_response'
require 'melio-platform-api-client/models/post_payment_intents_bulk_request'
require 'melio-platform-api-client/models/post_payment_intents_bulk_response'
require 'melio-platform-api-client/models/post_payment_intents_payment_intent_id_payment_response'
require 'melio-platform-api-client/models/post_payment_intents_request'
require 'melio-platform-api-client/models/post_payment_intents_request_bill_info'
require 'melio-platform-api-client/models/post_payment_intents_response'
require 'melio-platform-api-client/models/post_payments_payment_id_recover_request'
require 'melio-platform-api-client/models/post_payments_payment_id_recover_response'
require 'melio-platform-api-client/models/post_vendors_bulk_request'
require 'melio-platform-api-client/models/post_vendors_bulk_response'
require 'melio-platform-api-client/models/post_vendors_from_vendor_directory_request'
require 'melio-platform-api-client/models/post_vendors_from_vendor_directory_request_delivery_method'
require 'melio-platform-api-client/models/post_vendors_from_vendor_directory_response'
require 'melio-platform-api-client/models/post_vendors_request'
require 'melio-platform-api-client/models/post_vendors_response'
require 'melio-platform-api-client/models/post_vendors_vendor_id_delivery_methods_response'
require 'melio-platform-api-client/models/post_webhooks_checkouts_request'
require 'melio-platform-api-client/models/post_webhooks_checkouts_response'
require 'melio-platform-api-client/models/post_webhooks_payments_request'
require 'melio-platform-api-client/models/post_webhooks_payments_response'
require 'melio-platform-api-client/models/put_payment_intents_request'
require 'melio-platform-api-client/models/put_payment_intents_response'
require 'melio-platform-api-client/models/recover_payment_request'
require 'melio-platform-api-client/models/recover_payment_response'
require 'melio-platform-api-client/models/short_history'
require 'melio-platform-api-client/models/taba_pay_details'
require 'melio-platform-api-client/models/taba_pay_details_card_owner'
require 'melio-platform-api-client/models/tax_info'
require 'melio-platform-api-client/models/vendor'
require 'melio-platform-api-client/models/vendor_all_of'
require 'melio-platform-api-client/models/vendor_all_of_contact'
require 'melio-platform-api-client/models/vendor_directory'
require 'melio-platform-api-client/models/vendor_directory_contact'
require 'melio-platform-api-client/models/vendor_directory_delivery_method'
require 'melio-platform-api-client/models/vendor_directory_not_found_response'
require 'melio-platform-api-client/models/virtual_account'
require 'melio-platform-api-client/models/webhook'
require 'melio-platform-api-client/models/with_unknown_data'

# APIs
require 'melio-platform-api-client/api/accounts_api'
require 'melio-platform-api-client/api/auth_api'
require 'melio-platform-api-client/api/charges_api'
require 'melio-platform-api-client/api/checkouts_api'
require 'melio-platform-api-client/api/delivery_methods_api'
require 'melio-platform-api-client/api/files_api'
require 'melio-platform-api-client/api/financing_api'
require 'melio-platform-api-client/api/funding_sources_api'
require 'melio-platform-api-client/api/merchants_api'
require 'melio-platform-api-client/api/payment_intents_api'
require 'melio-platform-api-client/api/payments_api'
require 'melio-platform-api-client/api/vendor_directory_api'
require 'melio-platform-api-client/api/vendors_api'
require 'melio-platform-api-client/api/webhooks_api'

module MelioPlatformApiClient
  class << self
    # Customize default settings for the SDK using block.
    #   MelioPlatformApiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
