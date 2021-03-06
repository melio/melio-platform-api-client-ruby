=begin
#Platform API

#Melio Platform API enables partners to perform partner-related operations in Melio's system, for themselves, and on behalf of their system's users.  ## Definitions & entities #### Partner Represents a party that has high-level access level and can manage Accounts and performing action on them. Partners authenticate using a Partner secret API key, and are permitted to perform only on Accounts that belong to them.  #### Account Represents a business / company that is connected to the Partners system. Partners can have multiple Accounts.  #### Delivery Method A payment destination that is used to receive funds. Accounts can have multiple Delivery Methods.  #### Funding Source A payment source that is used to send funds. Accounts can have multiple Funding Sources.  #### Vendor A business entity that can receive funds from an Account. Vendors are Account-specific.  #### Payment Intent This main entity holds the general bill information (e.g. amount to pay, Vendor to pay to, due date, etc.), and acts as a utility / factory for creating Payments with selected configuration.  #### Payment This core entity facilitates Melio's main use case of transferring funds *from* an Account's Delivery Method *to* a Vendor / Account's Delivery Method on a certain date, along with additional relevant information.  #### Merchant Represents an Account's configuration as a seller, along with its additional data and options.  #### Checkout Represents a checkout session that is performed by the buyer, along with the cart and additional required details.  #### Charge Represnets a charging order for a Checkout, created when a Checkout is captured.  #### FileInfo Wraps around a file in the platform - generic and can be uplaoded and associated with other objects per request.  ## `Melio-Account` header The `Melio-Account` header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It conains the Account'd ID which returned when creating the Account, or when retrieving all of the Partner's Accounts.  Note that most operations are not permitted without the presence of this header. 

The version of the OpenAPI document: 1.0
Contact: platform@melio.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MelioPlatformApiClient::ChargesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ChargesApi' do
  before do
    # run before each test
    @api_instance = MelioPlatformApiClient::ChargesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ChargesApi' do
    it 'should create an instance of ChargesApi' do
      expect(@api_instance).to be_instance_of(MelioPlatformApiClient::ChargesApi)
    end
  end

  # unit tests for delete_charges_charge_id
  # Delete a Charge
  # Cancel a Charge (Refund)
  # @param charge_id 
  # @param idempotency_key Unique idempotency key
  # @param [Hash] opts the optional parameters
  # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
  # @return [DeletedResponse]
  describe 'delete_charges_charge_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_charges_charge_id
  # Retrieve a Charge
  # Retrieve the status of a Charge made by the Account
  # @param charge_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
  # @return [GetChargesChargeIdResponse]
  describe 'get_charges_charge_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_merchants_merchant_id_charges
  # Retrieve all Charges
  # Retrieve all the Charges for the merchant
  # @param merchant_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
  # @return [GetChargesResponse]
  describe 'get_merchants_merchant_id_charges test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_charges_charge_id
  # Update a Charge
  # Update a Charge (effectively a partial refund). Send a new amount to refund the difference between original charge&#39;s amount and the new one. The new amount cannot be more than the original.
  # @param charge_id 
  # @param idempotency_key Unique idempotency key
  # @param [Hash] opts the optional parameters
  # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
  # @option opts [PatchChargesChargeIdRequest] :patch_charges_charge_id_request 
  # @return [PatchChargesChargeIdResponse]
  describe 'patch_charges_charge_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
