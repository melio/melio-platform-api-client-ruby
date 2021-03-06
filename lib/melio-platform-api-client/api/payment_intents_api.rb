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
  class PaymentIntentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve all Payment Intents
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [GetPaymentIntentsResponse]
    def get_payment_intents(opts = {})
      data, _status_code, _headers = get_payment_intents_with_http_info(opts)
      data
    end

    # Retrieve all Payment Intents
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [Array<(GetPaymentIntentsResponse, Integer, Hash)>] GetPaymentIntentsResponse data, response status code and response headers
    def get_payment_intents_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentIntentsApi.get_payment_intents ...'
      end
      # resource path
      local_var_path = '/payment-intents'

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
      return_type = opts[:debug_return_type] || 'GetPaymentIntentsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AccessToken', 'ApiKey']

      new_options = opts.merge(
        :operation => :"PaymentIntentsApi.get_payment_intents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentIntentsApi#get_payment_intents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a Payment Intent
    # @param payment_intent_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [GetPaymentIntentsPaymentIntentIdResponse]
    def get_payment_intents_payment_intent_id(payment_intent_id, opts = {})
      data, _status_code, _headers = get_payment_intents_payment_intent_id_with_http_info(payment_intent_id, opts)
      data
    end

    # Retrieve a Payment Intent
    # @param payment_intent_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [Array<(GetPaymentIntentsPaymentIntentIdResponse, Integer, Hash)>] GetPaymentIntentsPaymentIntentIdResponse data, response status code and response headers
    def get_payment_intents_payment_intent_id_with_http_info(payment_intent_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentIntentsApi.get_payment_intents_payment_intent_id ...'
      end
      # verify the required parameter 'payment_intent_id' is set
      if @api_client.config.client_side_validation && payment_intent_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_intent_id' when calling PaymentIntentsApi.get_payment_intents_payment_intent_id"
      end
      # resource path
      local_var_path = '/payment-intents/{paymentIntentId}'.sub('{' + 'paymentIntentId' + '}', CGI.escape(payment_intent_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetPaymentIntentsPaymentIntentIdResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AccessToken', 'ApiKey']

      new_options = opts.merge(
        :operation => :"PaymentIntentsApi.get_payment_intents_payment_intent_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentIntentsApi#get_payment_intents_payment_intent_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Payment Intent
    # Update an existing Payment Intent.  The request's body can be partial, and only provided fields will be overwritten. Set a field to `null` in order to remove its contents.
    # @param payment_intent_id [String] 
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PatchPaymentIntentsPaymentIntentIdRequest] :patch_payment_intents_payment_intent_id_request 
    # @return [PatchPaymentIntentsPaymentIntentIdResponse]
    def patch_payment_intents_payment_intent_id(payment_intent_id, idempotency_key, opts = {})
      data, _status_code, _headers = patch_payment_intents_payment_intent_id_with_http_info(payment_intent_id, idempotency_key, opts)
      data
    end

    # Update a Payment Intent
    # Update an existing Payment Intent.  The request&#39;s body can be partial, and only provided fields will be overwritten. Set a field to &#x60;null&#x60; in order to remove its contents.
    # @param payment_intent_id [String] 
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PatchPaymentIntentsPaymentIntentIdRequest] :patch_payment_intents_payment_intent_id_request 
    # @return [Array<(PatchPaymentIntentsPaymentIntentIdResponse, Integer, Hash)>] PatchPaymentIntentsPaymentIntentIdResponse data, response status code and response headers
    def patch_payment_intents_payment_intent_id_with_http_info(payment_intent_id, idempotency_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentIntentsApi.patch_payment_intents_payment_intent_id ...'
      end
      # verify the required parameter 'payment_intent_id' is set
      if @api_client.config.client_side_validation && payment_intent_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_intent_id' when calling PaymentIntentsApi.patch_payment_intents_payment_intent_id"
      end
      # verify the required parameter 'idempotency_key' is set
      if @api_client.config.client_side_validation && idempotency_key.nil?
        fail ArgumentError, "Missing the required parameter 'idempotency_key' when calling PaymentIntentsApi.patch_payment_intents_payment_intent_id"
      end
      # resource path
      local_var_path = '/payment-intents/{paymentIntentId}'.sub('{' + 'paymentIntentId' + '}', CGI.escape(payment_intent_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'patch_payment_intents_payment_intent_id_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'PatchPaymentIntentsPaymentIntentIdResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AccessToken', 'ApiKey']

      new_options = opts.merge(
        :operation => :"PaymentIntentsApi.patch_payment_intents_payment_intent_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentIntentsApi#patch_payment_intents_payment_intent_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Payment Intent
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PostPaymentIntentsRequest] :post_payment_intents_request 
    # @return [PostPaymentIntentsResponse]
    def post_payment_intents(idempotency_key, opts = {})
      data, _status_code, _headers = post_payment_intents_with_http_info(idempotency_key, opts)
      data
    end

    # Create a Payment Intent
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PostPaymentIntentsRequest] :post_payment_intents_request 
    # @return [Array<(PostPaymentIntentsResponse, Integer, Hash)>] PostPaymentIntentsResponse data, response status code and response headers
    def post_payment_intents_with_http_info(idempotency_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentIntentsApi.post_payment_intents ...'
      end
      # verify the required parameter 'idempotency_key' is set
      if @api_client.config.client_side_validation && idempotency_key.nil?
        fail ArgumentError, "Missing the required parameter 'idempotency_key' when calling PaymentIntentsApi.post_payment_intents"
      end
      # resource path
      local_var_path = '/payment-intents'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'post_payment_intents_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'PostPaymentIntentsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AccessToken', 'ApiKey']

      new_options = opts.merge(
        :operation => :"PaymentIntentsApi.post_payment_intents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentIntentsApi#post_payment_intents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create multiple Payment Intents
    # Create multiple Payment Intents based on a provided list.
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PostPaymentIntentsBulkRequest] :post_payment_intents_bulk_request 
    # @return [PostPaymentIntentsBulkResponse]
    def post_payment_intents_bulk(idempotency_key, opts = {})
      data, _status_code, _headers = post_payment_intents_bulk_with_http_info(idempotency_key, opts)
      data
    end

    # Create multiple Payment Intents
    # Create multiple Payment Intents based on a provided list.
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @option opts [PostPaymentIntentsBulkRequest] :post_payment_intents_bulk_request 
    # @return [Array<(PostPaymentIntentsBulkResponse, Integer, Hash)>] PostPaymentIntentsBulkResponse data, response status code and response headers
    def post_payment_intents_bulk_with_http_info(idempotency_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentIntentsApi.post_payment_intents_bulk ...'
      end
      # verify the required parameter 'idempotency_key' is set
      if @api_client.config.client_side_validation && idempotency_key.nil?
        fail ArgumentError, "Missing the required parameter 'idempotency_key' when calling PaymentIntentsApi.post_payment_intents_bulk"
      end
      # resource path
      local_var_path = '/payment-intents/bulk'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'post_payment_intents_bulk_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'PostPaymentIntentsBulkResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AccessToken', 'ApiKey']

      new_options = opts.merge(
        :operation => :"PaymentIntentsApi.post_payment_intents_bulk",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentIntentsApi#post_payment_intents_bulk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Confirm a Payment Intent
    # Confirm this Payment Intent and produce a Payment based on the current configuration.
    # @param payment_intent_id [String] 
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [PostPaymentIntentsPaymentIntentIdPaymentResponse]
    def post_payment_intents_payment_intent_id_confirm(payment_intent_id, idempotency_key, opts = {})
      data, _status_code, _headers = post_payment_intents_payment_intent_id_confirm_with_http_info(payment_intent_id, idempotency_key, opts)
      data
    end

    # Confirm a Payment Intent
    # Confirm this Payment Intent and produce a Payment based on the current configuration.
    # @param payment_intent_id [String] 
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [Array<(PostPaymentIntentsPaymentIntentIdPaymentResponse, Integer, Hash)>] PostPaymentIntentsPaymentIntentIdPaymentResponse data, response status code and response headers
    def post_payment_intents_payment_intent_id_confirm_with_http_info(payment_intent_id, idempotency_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentIntentsApi.post_payment_intents_payment_intent_id_confirm ...'
      end
      # verify the required parameter 'payment_intent_id' is set
      if @api_client.config.client_side_validation && payment_intent_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_intent_id' when calling PaymentIntentsApi.post_payment_intents_payment_intent_id_confirm"
      end
      # verify the required parameter 'idempotency_key' is set
      if @api_client.config.client_side_validation && idempotency_key.nil?
        fail ArgumentError, "Missing the required parameter 'idempotency_key' when calling PaymentIntentsApi.post_payment_intents_payment_intent_id_confirm"
      end
      # resource path
      local_var_path = '/payment-intents/{paymentIntentId}/confirm'.sub('{' + 'paymentIntentId' + '}', CGI.escape(payment_intent_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PostPaymentIntentsPaymentIntentIdPaymentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AccessToken', 'ApiKey']

      new_options = opts.merge(
        :operation => :"PaymentIntentsApi.post_payment_intents_payment_intent_id_confirm",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentIntentsApi#post_payment_intents_payment_intent_id_confirm\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
