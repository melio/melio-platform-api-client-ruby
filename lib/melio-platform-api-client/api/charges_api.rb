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
  class ChargesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a Charge
    # Cancel a Charge (Refund)
    # @param charge_id [String] 
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [DeletedResponse]
    def delete_charges_charge_id(charge_id, idempotency_key, opts = {})
      data, _status_code, _headers = delete_charges_charge_id_with_http_info(charge_id, idempotency_key, opts)
      data
    end

    # Delete a Charge
    # Cancel a Charge (Refund)
    # @param charge_id [String] 
    # @param idempotency_key [String] Unique idempotency key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [Array<(DeletedResponse, Integer, Hash)>] DeletedResponse data, response status code and response headers
    def delete_charges_charge_id_with_http_info(charge_id, idempotency_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChargesApi.delete_charges_charge_id ...'
      end
      # verify the required parameter 'charge_id' is set
      if @api_client.config.client_side_validation && charge_id.nil?
        fail ArgumentError, "Missing the required parameter 'charge_id' when calling ChargesApi.delete_charges_charge_id"
      end
      # verify the required parameter 'idempotency_key' is set
      if @api_client.config.client_side_validation && idempotency_key.nil?
        fail ArgumentError, "Missing the required parameter 'idempotency_key' when calling ChargesApi.delete_charges_charge_id"
      end
      # resource path
      local_var_path = '/charges/{chargeId}'.sub('{' + 'chargeId' + '}', CGI.escape(charge_id.to_s))

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
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ChargesApi.delete_charges_charge_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChargesApi#delete_charges_charge_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a Charge
    # Retrieve the status of a Charge made by the Account
    # @param charge_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [GetChargesChargeIdResponse]
    def get_charges_charge_id(charge_id, opts = {})
      data, _status_code, _headers = get_charges_charge_id_with_http_info(charge_id, opts)
      data
    end

    # Retrieve a Charge
    # Retrieve the status of a Charge made by the Account
    # @param charge_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [Array<(GetChargesChargeIdResponse, Integer, Hash)>] GetChargesChargeIdResponse data, response status code and response headers
    def get_charges_charge_id_with_http_info(charge_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChargesApi.get_charges_charge_id ...'
      end
      # verify the required parameter 'charge_id' is set
      if @api_client.config.client_side_validation && charge_id.nil?
        fail ArgumentError, "Missing the required parameter 'charge_id' when calling ChargesApi.get_charges_charge_id"
      end
      # resource path
      local_var_path = '/charges/{chargeId}'.sub('{' + 'chargeId' + '}', CGI.escape(charge_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetChargesChargeIdResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ChargesApi.get_charges_charge_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChargesApi#get_charges_charge_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all Charges
    # Retrieve all the Charges for the merchant
    # @param merchant_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [GetChargesResponse]
    def get_merchants_merchant_id_charges(merchant_id, opts = {})
      data, _status_code, _headers = get_merchants_merchant_id_charges_with_http_info(merchant_id, opts)
      data
    end

    # Retrieve all Charges
    # Retrieve all the Charges for the merchant
    # @param merchant_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :melio_account The &#x60;Melio-Account&#x60; header is used when a Partner wants to perform an operation on behalf of one of its Accounts. It contains the Account&#39;s ID which returned when creating the Account, or when retrieving all of the Partner&#39;s Accounts. Note that most operations are not permitted without the presence of this header.
    # @return [Array<(GetChargesResponse, Integer, Hash)>] GetChargesResponse data, response status code and response headers
    def get_merchants_merchant_id_charges_with_http_info(merchant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChargesApi.get_merchants_merchant_id_charges ...'
      end
      # verify the required parameter 'merchant_id' is set
      if @api_client.config.client_side_validation && merchant_id.nil?
        fail ArgumentError, "Missing the required parameter 'merchant_id' when calling ChargesApi.get_merchants_merchant_id_charges"
      end
      # resource path
      local_var_path = '/merchants/{merchantId}/charges'.sub('{' + 'merchantId' + '}', CGI.escape(merchant_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetChargesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ChargesApi.get_merchants_merchant_id_charges",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChargesApi#get_merchants_merchant_id_charges\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
