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
  class CheckoutsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve a Checkout
    # Get the status of a Checkout session
    # @param checkout_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [GetCheckoutsCheckoutIdResponse]
    def get_checkouts_checkout_id(checkout_id, opts = {})
      data, _status_code, _headers = get_checkouts_checkout_id_with_http_info(checkout_id, opts)
      data
    end

    # Retrieve a Checkout
    # Get the status of a Checkout session
    # @param checkout_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [Array<(GetCheckoutsCheckoutIdResponse, Integer, Hash)>] GetCheckoutsCheckoutIdResponse data, response status code and response headers
    def get_checkouts_checkout_id_with_http_info(checkout_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckoutsApi.get_checkouts_checkout_id ...'
      end
      # verify the required parameter 'checkout_id' is set
      if @api_client.config.client_side_validation && checkout_id.nil?
        fail ArgumentError, "Missing the required parameter 'checkout_id' when calling CheckoutsApi.get_checkouts_checkout_id"
      end
      # resource path
      local_var_path = '/checkouts/{checkoutId}'.sub('{' + 'checkoutId' + '}', CGI.escape(checkout_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetCheckoutsCheckoutIdResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AccessToken', 'ApiKey']

      new_options = opts.merge(
        :operation => :"CheckoutsApi.get_checkouts_checkout_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckoutsApi#get_checkouts_checkout_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Checkout
    # Start a new Checkout session.  It is recommended to make use of all the different amount fields on the `Checkout` object: * `subtotal` - The total price of the list items, after applying item level discounts. * `grandTotal` - Equals `subtotal` minus coupons and plus taxes and shipping cost. * `outstandingBalance` - Actual amount to charge the buyer using Melio, equals `grandTotal` minus store credit used and gift certificates applied.
    # @param merchant_id [String] 
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PostCheckoutsRequest] :post_checkouts_request 
    # @return [PostCheckoutsResponse]
    def post_checkouts(merchant_id, idempotency_key, opts = {})
      data, _status_code, _headers = post_checkouts_with_http_info(merchant_id, idempotency_key, opts)
      data
    end

    # Create a Checkout
    # Start a new Checkout session.  It is recommended to make use of all the different amount fields on the &#x60;Checkout&#x60; object: * &#x60;subtotal&#x60; - The total price of the list items, after applying item level discounts. * &#x60;grandTotal&#x60; - Equals &#x60;subtotal&#x60; minus coupons and plus taxes and shipping cost. * &#x60;outstandingBalance&#x60; - Actual amount to charge the buyer using Melio, equals &#x60;grandTotal&#x60; minus store credit used and gift certificates applied.
    # @param merchant_id [String] 
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PostCheckoutsRequest] :post_checkouts_request 
    # @return [Array<(PostCheckoutsResponse, Integer, Hash)>] PostCheckoutsResponse data, response status code and response headers
    def post_checkouts_with_http_info(merchant_id, idempotency_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckoutsApi.post_checkouts ...'
      end
      # verify the required parameter 'merchant_id' is set
      if @api_client.config.client_side_validation && merchant_id.nil?
        fail ArgumentError, "Missing the required parameter 'merchant_id' when calling CheckoutsApi.post_checkouts"
      end
      # verify the required parameter 'idempotency_key' is set
      if @api_client.config.client_side_validation && idempotency_key.nil?
        fail ArgumentError, "Missing the required parameter 'idempotency_key' when calling CheckoutsApi.post_checkouts"
      end
      # resource path
      local_var_path = '/merchants/{merchantId}/checkouts'.sub('{' + 'merchantId' + '}', CGI.escape(merchant_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'post_checkouts_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'PostCheckoutsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CheckoutsApi.post_checkouts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckoutsApi#post_checkouts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Capture a Checkout
    # Mark that a Checkout session is finalized by the seller and the payment can be captured
    # @param checkout_id [String] 
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PostCheckoutsCheckoutIdCaptureRequest] :post_checkouts_checkout_id_capture_request 
    # @return [nil]
    def post_checkouts_checkout_id_capture(checkout_id, idempotency_key, opts = {})
      post_checkouts_checkout_id_capture_with_http_info(checkout_id, idempotency_key, opts)
      nil
    end

    # Capture a Checkout
    # Mark that a Checkout session is finalized by the seller and the payment can be captured
    # @param checkout_id [String] 
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PostCheckoutsCheckoutIdCaptureRequest] :post_checkouts_checkout_id_capture_request 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def post_checkouts_checkout_id_capture_with_http_info(checkout_id, idempotency_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckoutsApi.post_checkouts_checkout_id_capture ...'
      end
      # verify the required parameter 'checkout_id' is set
      if @api_client.config.client_side_validation && checkout_id.nil?
        fail ArgumentError, "Missing the required parameter 'checkout_id' when calling CheckoutsApi.post_checkouts_checkout_id_capture"
      end
      # verify the required parameter 'idempotency_key' is set
      if @api_client.config.client_side_validation && idempotency_key.nil?
        fail ArgumentError, "Missing the required parameter 'idempotency_key' when calling CheckoutsApi.post_checkouts_checkout_id_capture"
      end
      # resource path
      local_var_path = '/checkouts/{checkoutId}/capture'.sub('{' + 'checkoutId' + '}', CGI.escape(checkout_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'post_checkouts_checkout_id_capture_request'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CheckoutsApi.post_checkouts_checkout_id_capture",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckoutsApi#post_checkouts_checkout_id_capture\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Complete a Checkout
    # Complete a Checkout session for the buyer by providing payment details
    # @param checkout_id [String] 
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PostCheckoutsCheckoutIdCompleteRequest] :post_checkouts_checkout_id_complete_request 
    # @return [nil]
    def post_checkouts_checkout_id_complete(checkout_id, idempotency_key, opts = {})
      post_checkouts_checkout_id_complete_with_http_info(checkout_id, idempotency_key, opts)
      nil
    end

    # Complete a Checkout
    # Complete a Checkout session for the buyer by providing payment details
    # @param checkout_id [String] 
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PostCheckoutsCheckoutIdCompleteRequest] :post_checkouts_checkout_id_complete_request 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def post_checkouts_checkout_id_complete_with_http_info(checkout_id, idempotency_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckoutsApi.post_checkouts_checkout_id_complete ...'
      end
      # verify the required parameter 'checkout_id' is set
      if @api_client.config.client_side_validation && checkout_id.nil?
        fail ArgumentError, "Missing the required parameter 'checkout_id' when calling CheckoutsApi.post_checkouts_checkout_id_complete"
      end
      # verify the required parameter 'idempotency_key' is set
      if @api_client.config.client_side_validation && idempotency_key.nil?
        fail ArgumentError, "Missing the required parameter 'idempotency_key' when calling CheckoutsApi.post_checkouts_checkout_id_complete"
      end
      # resource path
      local_var_path = '/checkouts/{checkoutId}/complete'.sub('{' + 'checkoutId' + '}', CGI.escape(checkout_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'post_checkouts_checkout_id_complete_request'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AccessToken', 'ApiKey']

      new_options = opts.merge(
        :operation => :"CheckoutsApi.post_checkouts_checkout_id_complete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckoutsApi#post_checkouts_checkout_id_complete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
