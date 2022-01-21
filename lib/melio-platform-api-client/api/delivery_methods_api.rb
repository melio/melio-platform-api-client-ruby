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
  class DeliveryMethodsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a Delivery Method
    # Remove a Delivery Method from the Account
    # @param delivery_method_id [String] 
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [DeletedResponse]
    def delete_delivery_methods_delivery_method_id(delivery_method_id, idempotency_key, opts = {})
      data, _status_code, _headers = delete_delivery_methods_delivery_method_id_with_http_info(delivery_method_id, idempotency_key, opts)
      data
    end

    # Delete a Delivery Method
    # Remove a Delivery Method from the Account
    # @param delivery_method_id [String] 
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [Array<(DeletedResponse, Integer, Hash)>] DeletedResponse data, response status code and response headers
    def delete_delivery_methods_delivery_method_id_with_http_info(delivery_method_id, idempotency_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeliveryMethodsApi.delete_delivery_methods_delivery_method_id ...'
      end
      # verify the required parameter 'delivery_method_id' is set
      if @api_client.config.client_side_validation && delivery_method_id.nil?
        fail ArgumentError, "Missing the required parameter 'delivery_method_id' when calling DeliveryMethodsApi.delete_delivery_methods_delivery_method_id"
      end
      # verify the required parameter 'idempotency_key' is set
      if @api_client.config.client_side_validation && idempotency_key.nil?
        fail ArgumentError, "Missing the required parameter 'idempotency_key' when calling DeliveryMethodsApi.delete_delivery_methods_delivery_method_id"
      end
      # resource path
      local_var_path = '/delivery-methods/{deliveryMethodId}'.sub('{' + 'deliveryMethodId' + '}', CGI.escape(delivery_method_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Idempotency-Key'] = idempotency_key
      header_params[:'Melio-Account'] = opts[:'melio_account'] if !opts[:'melio_account'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DeletedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AccessToken', 'ApiKey']

      new_options = opts.merge(
        :operation => :"DeliveryMethodsApi.delete_delivery_methods_delivery_method_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryMethodsApi#delete_delivery_methods_delivery_method_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all Delivery Methods
    # Retrieve a list of all Delivery Methods the Account has
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [GetDeliveryMethodsResponse]
    def get_delivery_methods(opts = {})
      data, _status_code, _headers = get_delivery_methods_with_http_info(opts)
      data
    end

    # Retrieve all Delivery Methods
    # Retrieve a list of all Delivery Methods the Account has
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [Array<(GetDeliveryMethodsResponse, Integer, Hash)>] GetDeliveryMethodsResponse data, response status code and response headers
    def get_delivery_methods_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeliveryMethodsApi.get_delivery_methods ...'
      end
      # resource path
      local_var_path = '/delivery-methods'

      # query parameters
      query_params = opts[:query_params] || {}

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
      return_type = opts[:debug_return_type] || 'GetDeliveryMethodsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AccessToken', 'ApiKey']

      new_options = opts.merge(
        :operation => :"DeliveryMethodsApi.get_delivery_methods",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryMethodsApi#get_delivery_methods\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a Delivery Method
    # Retrieve the details about a specific Delivery Method the Account has
    # @param delivery_method_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [GetDeliveryMethodsDeliveryMethodIdResponse]
    def get_delivery_methods_delivery_method_id(delivery_method_id, opts = {})
      data, _status_code, _headers = get_delivery_methods_delivery_method_id_with_http_info(delivery_method_id, opts)
      data
    end

    # Retrieve a Delivery Method
    # Retrieve the details about a specific Delivery Method the Account has
    # @param delivery_method_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [Array<(GetDeliveryMethodsDeliveryMethodIdResponse, Integer, Hash)>] GetDeliveryMethodsDeliveryMethodIdResponse data, response status code and response headers
    def get_delivery_methods_delivery_method_id_with_http_info(delivery_method_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeliveryMethodsApi.get_delivery_methods_delivery_method_id ...'
      end
      # verify the required parameter 'delivery_method_id' is set
      if @api_client.config.client_side_validation && delivery_method_id.nil?
        fail ArgumentError, "Missing the required parameter 'delivery_method_id' when calling DeliveryMethodsApi.get_delivery_methods_delivery_method_id"
      end
      # resource path
      local_var_path = '/delivery-methods/{deliveryMethodId}'.sub('{' + 'deliveryMethodId' + '}', CGI.escape(delivery_method_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      return_type = opts[:debug_return_type] || 'GetDeliveryMethodsDeliveryMethodIdResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AccessToken', 'ApiKey']

      new_options = opts.merge(
        :operation => :"DeliveryMethodsApi.get_delivery_methods_delivery_method_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryMethodsApi#get_delivery_methods_delivery_method_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a Vendor's Delivery Methods
    # Get a list of a Vendor's Delivery Methods, that can be used to sent funds to.
    # @param vendor_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [GetVendorsVendorIdDeliveryMethodsResponse]
    def get_vendors_vendor_id_delivery_methods(vendor_id, opts = {})
      data, _status_code, _headers = get_vendors_vendor_id_delivery_methods_with_http_info(vendor_id, opts)
      data
    end

    # Retrieve a Vendor&#39;s Delivery Methods
    # Get a list of a Vendor&#39;s Delivery Methods, that can be used to sent funds to.
    # @param vendor_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [Array<(GetVendorsVendorIdDeliveryMethodsResponse, Integer, Hash)>] GetVendorsVendorIdDeliveryMethodsResponse data, response status code and response headers
    def get_vendors_vendor_id_delivery_methods_with_http_info(vendor_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeliveryMethodsApi.get_vendors_vendor_id_delivery_methods ...'
      end
      # verify the required parameter 'vendor_id' is set
      if @api_client.config.client_side_validation && vendor_id.nil?
        fail ArgumentError, "Missing the required parameter 'vendor_id' when calling DeliveryMethodsApi.get_vendors_vendor_id_delivery_methods"
      end
      # resource path
      local_var_path = '/vendors/{vendorId}/delivery-methods'.sub('{' + 'vendorId' + '}', CGI.escape(vendor_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      return_type = opts[:debug_return_type] || 'GetVendorsVendorIdDeliveryMethodsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AccessToken', 'ApiKey']

      new_options = opts.merge(
        :operation => :"DeliveryMethodsApi.get_vendors_vendor_id_delivery_methods",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryMethodsApi#get_vendors_vendor_id_delivery_methods\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Delivery Method
    # Add a new Delivery Method for the Account.  The `type` field determines the contents of the `details` field, according to the following mapping: * `bank-account` => `BankAccount` * `paper-check` => `PaperCheck` * `virtual-account` => `VirtualAccount`
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PostDeliveryMethodsRequest] :post_delivery_methods_request 
    # @return [PostDeliveryMethodsResponse]
    def post_delivery_methods(idempotency_key, opts = {})
      data, _status_code, _headers = post_delivery_methods_with_http_info(idempotency_key, opts)
      data
    end

    # Create a Delivery Method
    # Add a new Delivery Method for the Account.  The &#x60;type&#x60; field determines the contents of the &#x60;details&#x60; field, according to the following mapping: * &#x60;bank-account&#x60; &#x3D;&gt; &#x60;BankAccount&#x60; * &#x60;paper-check&#x60; &#x3D;&gt; &#x60;PaperCheck&#x60; * &#x60;virtual-account&#x60; &#x3D;&gt; &#x60;VirtualAccount&#x60;
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PostDeliveryMethodsRequest] :post_delivery_methods_request 
    # @return [Array<(PostDeliveryMethodsResponse, Integer, Hash)>] PostDeliveryMethodsResponse data, response status code and response headers
    def post_delivery_methods_with_http_info(idempotency_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeliveryMethodsApi.post_delivery_methods ...'
      end
      # verify the required parameter 'idempotency_key' is set
      if @api_client.config.client_side_validation && idempotency_key.nil?
        fail ArgumentError, "Missing the required parameter 'idempotency_key' when calling DeliveryMethodsApi.post_delivery_methods"
      end
      # resource path
      local_var_path = '/delivery-methods'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'post_delivery_methods_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'PostDeliveryMethodsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AccessToken', 'ApiKey']

      new_options = opts.merge(
        :operation => :"DeliveryMethodsApi.post_delivery_methods",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryMethodsApi#post_delivery_methods\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Vendor's Delivery Method
    # @param vendor_id [String] 
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PostDeliveryMethodsRequest] :body 
    # @return [PostVendorsVendorIdDeliveryMethodsResponse]
    def post_vendors_vendor_id_delivery_methods(vendor_id, idempotency_key, opts = {})
      data, _status_code, _headers = post_vendors_vendor_id_delivery_methods_with_http_info(vendor_id, idempotency_key, opts)
      data
    end

    # Create a Vendor&#39;s Delivery Method
    # @param vendor_id [String] 
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PostDeliveryMethodsRequest] :body 
    # @return [Array<(PostVendorsVendorIdDeliveryMethodsResponse, Integer, Hash)>] PostVendorsVendorIdDeliveryMethodsResponse data, response status code and response headers
    def post_vendors_vendor_id_delivery_methods_with_http_info(vendor_id, idempotency_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeliveryMethodsApi.post_vendors_vendor_id_delivery_methods ...'
      end
      # verify the required parameter 'vendor_id' is set
      if @api_client.config.client_side_validation && vendor_id.nil?
        fail ArgumentError, "Missing the required parameter 'vendor_id' when calling DeliveryMethodsApi.post_vendors_vendor_id_delivery_methods"
      end
      # verify the required parameter 'idempotency_key' is set
      if @api_client.config.client_side_validation && idempotency_key.nil?
        fail ArgumentError, "Missing the required parameter 'idempotency_key' when calling DeliveryMethodsApi.post_vendors_vendor_id_delivery_methods"
      end
      # resource path
      local_var_path = '/vendors/{vendorId}/delivery-methods'.sub('{' + 'vendorId' + '}', CGI.escape(vendor_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'PostVendorsVendorIdDeliveryMethodsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AccessToken', 'ApiKey']

      new_options = opts.merge(
        :operation => :"DeliveryMethodsApi.post_vendors_vendor_id_delivery_methods",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryMethodsApi#post_vendors_vendor_id_delivery_methods\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
