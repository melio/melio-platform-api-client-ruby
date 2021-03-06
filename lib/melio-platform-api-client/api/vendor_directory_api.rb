=begin
#Platform API

#Melio Platform API enables partners to perform partner-related operations in Melio's system, for themselves, and on behalf of their system's users.

The version of the OpenAPI document: 1.0
Contact: platform@melio.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'cgi'

module MelioPlatformApiClient
  class VendorDirectoryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve all filtered Vendors in the Vendor Directory
    # List of all Vendors in the Vendor Directory, filtered by the name parameter and with provided query limit (default 20).
    # @param name [String] The name of the Vendor to query
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of items to include in the returned list (default to 20)
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [GetVendorDirectoryResponse]
    def get_vendor_directory(name, opts = {})
      data, _status_code, _headers = get_vendor_directory_with_http_info(name, opts)
      data
    end

    # Retrieve all filtered Vendors in the Vendor Directory
    # List of all Vendors in the Vendor Directory, filtered by the name parameter and with provided query limit (default 20).
    # @param name [String] The name of the Vendor to query
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of items to include in the returned list
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [Array<(GetVendorDirectoryResponse, Integer, Hash)>] GetVendorDirectoryResponse data, response status code and response headers
    def get_vendor_directory_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VendorDirectoryApi.get_vendor_directory ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling VendorDirectoryApi.get_vendor_directory"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 0
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling VendorDirectoryApi.get_vendor_directory, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/vendor-directory'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = name
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Melio-Account'] = opts[:'melio_account'] if !opts[:'melio_account'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetVendorDirectoryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AccessToken', 'ApiKey']

      new_options = opts.merge(
        :operation => :"VendorDirectoryApi.get_vendor_directory",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VendorDirectoryApi#get_vendor_directory\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Vendor from Vendor Directory
    # Add a specific Vendor from Vendor Directory by its ID to an Account, and clone its Delivery Method in case of biller account.
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PostVendorsFromVendorDirectoryRequest] :post_vendors_from_vendor_directory_request 
    # @return [PostVendorsFromVendorDirectoryResponse]
    def post_vendors_from_vendor_directory(idempotency_key, opts = {})
      data, _status_code, _headers = post_vendors_from_vendor_directory_with_http_info(idempotency_key, opts)
      data
    end

    # Create a Vendor from Vendor Directory
    # Add a specific Vendor from Vendor Directory by its ID to an Account, and clone its Delivery Method in case of biller account.
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PostVendorsFromVendorDirectoryRequest] :post_vendors_from_vendor_directory_request 
    # @return [Array<(PostVendorsFromVendorDirectoryResponse, Integer, Hash)>] PostVendorsFromVendorDirectoryResponse data, response status code and response headers
    def post_vendors_from_vendor_directory_with_http_info(idempotency_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VendorDirectoryApi.post_vendors_from_vendor_directory ...'
      end
      # verify the required parameter 'idempotency_key' is set
      if @api_client.config.client_side_validation && idempotency_key.nil?
        fail ArgumentError, "Missing the required parameter 'idempotency_key' when calling VendorDirectoryApi.post_vendors_from_vendor_directory"
      end
      # resource path
      local_var_path = '/vendors/from-vendor-directory'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Idempotency-Key'] = idempotency_key
      header_params[:'Melio-Account'] = opts[:'melio_account'] if !opts[:'melio_account'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'post_vendors_from_vendor_directory_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'PostVendorsFromVendorDirectoryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AccessToken', 'ApiKey']

      new_options = opts.merge(
        :operation => :"VendorDirectoryApi.post_vendors_from_vendor_directory",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VendorDirectoryApi#post_vendors_from_vendor_directory\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
