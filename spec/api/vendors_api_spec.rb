=begin
#Platform API

#Melio Platform API enables partners to perform partner-related operations in Melio's system, for themselves, and on behalf of their system's users.

The version of the OpenAPI document: 1.0
Contact: platform@melio.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MelioPlatformApiClient::VendorsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VendorsApi' do
  before do
    # run before each test
    @api_instance = MelioPlatformApiClient::VendorsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VendorsApi' do
    it 'should create an instance of VendorsApi' do
      expect(@api_instance).to be_instance_of(MelioPlatformApiClient::VendorsApi)
    end
  end

  # unit tests for delete_vendors_vendor_id
  # Delete a Vendor
  # Removing a Vendor from an Account.
  # @param vendor_id 
  # @param idempotency_key Unique idempotency key
  # @param [Hash] opts the optional parameters
  # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
  # @return [DeletedResponse]
  describe 'delete_vendors_vendor_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vendor_directory
  # Retrieve all filtered Vendors in the Vendor Directory
  # List of all Vendors in the Vendor Directory, filtered by the name parameter and with provided query limit (default 20).
  # @param name The name of the Vendor to query
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of items to include in the returned list
  # @return [GetVendorDirectoryResponse]
  describe 'get_vendor_directory test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vendors
  # Retrieve all Vendors
  # Retrieve a list of Vendors that are attached to an Account
  # @param [Hash] opts the optional parameters
  # @return [GetVendorsResponse]
  describe 'get_vendors test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vendors_vendor_id
  # Retrieve a Vendor
  # Retrieve a single Vendor using its ID.
  # @param vendor_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
  # @return [GetVendorsVendorIdResponse]
  describe 'get_vendors_vendor_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vendors_vendor_id_delivery_methods
  # Retrieve a Vendor&#39;s Delivery Methods
  # Get a list of a Vendor&#39;s Delivery Methods, that can be used to sent funds to.
  # @param vendor_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
  # @return [GetVendorsVendorIdDeliveryMethodsResponse]
  describe 'get_vendors_vendor_id_delivery_methods test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_vendors_vendor_id
  # Update a Vendor
  # Update an existing Vendor.  The request&#39;s body can be partial, and only provided fields will be overwritten. Set a field to &#x60;null&#x60; in order to remove its contents.
  # @param vendor_id 
  # @param idempotency_key Unique idempotency key
  # @param [Hash] opts the optional parameters
  # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
  # @option opts [PatchVendorsVendorIdRequest] :patch_vendors_vendor_id_request 
  # @return [PatchVendorsVendorIdResponse]
  describe 'patch_vendors_vendor_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_vendors
  # Create a Vendor
  # Create (attach) a Vendor to an Account.
  # @param idempotency_key Unique idempotency key
  # @param [Hash] opts the optional parameters
  # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
  # @option opts [PostVendorsRequest] :post_vendors_request 
  # @return [PostVendorsResponse]
  describe 'post_vendors test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_vendors_bulk
  # Create multiple Vendors
  # Create (attach) multiple Vendors to an Account, based on a provided list of business entities.
  # @param idempotency_key Unique idempotency key
  # @param [Hash] opts the optional parameters
  # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
  # @option opts [PostVendorsBulkRequest] :post_vendors_bulk_request 
  # @return [PostVendorsBulkResponse]
  describe 'post_vendors_bulk test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_vendors_from_vendor_directory
  # Create a Vendor from Vendor Directory
  # Add a specific Vendor from Vendor Directory by its ID to an Account, and clone its Delivery Method in case of biller account.
  # @param idempotency_key Unique idempotency key
  # @param [Hash] opts the optional parameters
  # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
  # @option opts [PostVendorsFromVendorDirectoryRequest] :post_vendors_from_vendor_directory_request 
  # @return [PostVendorsFromVendorDirectoryResponse]
  describe 'post_vendors_from_vendor_directory test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_vendors_vendor_id_delivery_methods
  # Create a Vendor&#39;s Delivery Method
  # @param vendor_id 
  # @param idempotency_key Unique idempotency key
  # @param [Hash] opts the optional parameters
  # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
  # @option opts [PostDeliveryMethodsRequest] :body 
  # @return [PostVendorsVendorIdDeliveryMethodsResponse]
  describe 'post_vendors_vendor_id_delivery_methods test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
