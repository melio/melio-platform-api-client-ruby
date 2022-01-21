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

# Unit tests for MelioPlatformApiClient::AccountsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AccountsApi' do
  before do
    # run before each test
    @api_instance = MelioPlatformApiClient::AccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountsApi' do
    it 'should create an instance of AccountsApi' do
      expect(@api_instance).to be_instance_of(MelioPlatformApiClient::AccountsApi)
    end
  end

  # unit tests for get_accounts
  # Retrieve all Accounts
  # Retrieve a list of all Accounts the current Partner manages
  # @param [Hash] opts the optional parameters
  # @return [GetAccountsResponse]
  describe 'get_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_accounts_account_id
  # Retrieve an Account
  # Retrieve an Account using its ID
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @return [GetAccountsAccountIdResponse]
  describe 'get_accounts_account_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_accounts
  # Create an Account
  # Create an Account with a company and a user.  Note that you can submit a Partern internal ID in the ID &#x60;id&#x60; field, in order to set it in Melio system as well. If not supplied, a random ID will be generated.
  # @param idempotency_key Unique idempotency key
  # @param [Hash] opts the optional parameters
  # @option opts [PostAccountsRequest] :post_accounts_request 
  # @return [PostAccountsResponse]
  describe 'post_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
