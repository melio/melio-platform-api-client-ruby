=begin
#Platform API

#Melio Platform API enables partners to perform partner-related operations in Melio's system, for themselves, and on behalf of their system's users.

The version of the OpenAPI document: 1.0
Contact: platform@melio.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'date'
require 'time'

module MelioPlatformApiClient
  class PostCheckoutsRequest
    attr_accessor :line_items

    attr_accessor :tax_items

    attr_accessor :shipping_address

    attr_accessor :billing_address

    attr_accessor :currency

    attr_accessor :tax_total

    attr_accessor :coupon_items

    attr_accessor :subtotal

    attr_accessor :shipping_cost_total

    attr_accessor :grand_total

    attr_accessor :store_credit

    # List of applied gift certificates
    attr_accessor :gift_certificates

    # Actual amount to charge the buyer using Melio, equals `grandTotal` minus store credit used and gift certificates applied
    attr_accessor :outstanding_balance

    attr_accessor :buyer

    attr_accessor :return_url

    attr_accessor :company_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'line_items' => :'lineItems',
        :'tax_items' => :'taxItems',
        :'shipping_address' => :'shippingAddress',
        :'billing_address' => :'billingAddress',
        :'currency' => :'currency',
        :'tax_total' => :'taxTotal',
        :'coupon_items' => :'couponItems',
        :'subtotal' => :'subtotal',
        :'shipping_cost_total' => :'shippingCostTotal',
        :'grand_total' => :'grandTotal',
        :'store_credit' => :'storeCredit',
        :'gift_certificates' => :'giftCertificates',
        :'outstanding_balance' => :'outstandingBalance',
        :'buyer' => :'buyer',
        :'return_url' => :'returnUrl',
        :'company_name' => :'companyName'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'line_items' => :'Array<LineItem>',
        :'tax_items' => :'Array<Adjustment>',
        :'shipping_address' => :'Address',
        :'billing_address' => :'Address',
        :'currency' => :'Currency',
        :'tax_total' => :'Integer',
        :'coupon_items' => :'Array<Adjustment>',
        :'subtotal' => :'Integer',
        :'shipping_cost_total' => :'Integer',
        :'grand_total' => :'Integer',
        :'store_credit' => :'Integer',
        :'gift_certificates' => :'Array<Adjustment>',
        :'outstanding_balance' => :'Integer',
        :'buyer' => :'CheckoutAllOfBuyer',
        :'return_url' => :'String',
        :'company_name' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MelioPlatformApiClient::PostCheckoutsRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MelioPlatformApiClient::PostCheckoutsRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.key?(:'tax_items')
        if (value = attributes[:'tax_items']).is_a?(Array)
          self.tax_items = value
        end
      end

      if attributes.key?(:'shipping_address')
        self.shipping_address = attributes[:'shipping_address']
      end

      if attributes.key?(:'billing_address')
        self.billing_address = attributes[:'billing_address']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = 'USD'
      end

      if attributes.key?(:'tax_total')
        self.tax_total = attributes[:'tax_total']
      end

      if attributes.key?(:'coupon_items')
        if (value = attributes[:'coupon_items']).is_a?(Array)
          self.coupon_items = value
        end
      end

      if attributes.key?(:'subtotal')
        self.subtotal = attributes[:'subtotal']
      end

      if attributes.key?(:'shipping_cost_total')
        self.shipping_cost_total = attributes[:'shipping_cost_total']
      end

      if attributes.key?(:'grand_total')
        self.grand_total = attributes[:'grand_total']
      end

      if attributes.key?(:'store_credit')
        self.store_credit = attributes[:'store_credit']
      end

      if attributes.key?(:'gift_certificates')
        if (value = attributes[:'gift_certificates']).is_a?(Array)
          self.gift_certificates = value
        end
      end

      if attributes.key?(:'outstanding_balance')
        self.outstanding_balance = attributes[:'outstanding_balance']
      end

      if attributes.key?(:'buyer')
        self.buyer = attributes[:'buyer']
      end

      if attributes.key?(:'return_url')
        self.return_url = attributes[:'return_url']
      end

      if attributes.key?(:'company_name')
        self.company_name = attributes[:'company_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @line_items.nil?
        invalid_properties.push('invalid value for "line_items", line_items cannot be nil.')
      end

      if @shipping_address.nil?
        invalid_properties.push('invalid value for "shipping_address", shipping_address cannot be nil.')
      end

      if @billing_address.nil?
        invalid_properties.push('invalid value for "billing_address", billing_address cannot be nil.')
      end

      if @tax_total.nil?
        invalid_properties.push('invalid value for "tax_total", tax_total cannot be nil.')
      end

      if @subtotal.nil?
        invalid_properties.push('invalid value for "subtotal", subtotal cannot be nil.')
      end

      if @grand_total.nil?
        invalid_properties.push('invalid value for "grand_total", grand_total cannot be nil.')
      end

      if @outstanding_balance.nil?
        invalid_properties.push('invalid value for "outstanding_balance", outstanding_balance cannot be nil.')
      end

      if @outstanding_balance > 99999999
        invalid_properties.push('invalid value for "outstanding_balance", must be smaller than or equal to 99999999.')
      end

      if @outstanding_balance < 1
        invalid_properties.push('invalid value for "outstanding_balance", must be greater than or equal to 1.')
      end

      if @buyer.nil?
        invalid_properties.push('invalid value for "buyer", buyer cannot be nil.')
      end

      if @company_name.nil?
        invalid_properties.push('invalid value for "company_name", company_name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @line_items.nil?
      return false if @shipping_address.nil?
      return false if @billing_address.nil?
      return false if @tax_total.nil?
      return false if @subtotal.nil?
      return false if @grand_total.nil?
      return false if @outstanding_balance.nil?
      return false if @outstanding_balance > 99999999
      return false if @outstanding_balance < 1
      return false if @buyer.nil?
      return false if @company_name.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] outstanding_balance Value to be assigned
    def outstanding_balance=(outstanding_balance)
      if outstanding_balance.nil?
        fail ArgumentError, 'outstanding_balance cannot be nil'
      end

      if outstanding_balance > 99999999
        fail ArgumentError, 'invalid value for "outstanding_balance", must be smaller than or equal to 99999999.'
      end

      if outstanding_balance < 1
        fail ArgumentError, 'invalid value for "outstanding_balance", must be greater than or equal to 1.'
      end

      @outstanding_balance = outstanding_balance
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          line_items == o.line_items &&
          tax_items == o.tax_items &&
          shipping_address == o.shipping_address &&
          billing_address == o.billing_address &&
          currency == o.currency &&
          tax_total == o.tax_total &&
          coupon_items == o.coupon_items &&
          subtotal == o.subtotal &&
          shipping_cost_total == o.shipping_cost_total &&
          grand_total == o.grand_total &&
          store_credit == o.store_credit &&
          gift_certificates == o.gift_certificates &&
          outstanding_balance == o.outstanding_balance &&
          buyer == o.buyer &&
          return_url == o.return_url &&
          company_name == o.company_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [line_items, tax_items, shipping_address, billing_address, currency, tax_total, coupon_items, subtotal, shipping_cost_total, grand_total, store_credit, gift_certificates, outstanding_balance, buyer, return_url, company_name].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = MelioPlatformApiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end