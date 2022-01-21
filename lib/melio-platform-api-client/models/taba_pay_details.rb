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
  class TabaPayDetails
    attr_accessor :tabapay_token

    attr_accessor :card_bin

    # Two-digits month (e.g. `01` or `11`)
    attr_accessor :expiration_month

    # Four-digits year (e.g. `2024`).
    attr_accessor :expiration_year

    attr_accessor :card_owner

    # LAst four digits of a payment card.
    attr_accessor :last_four_digits

    attr_accessor :address

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'tabapay_token' => :'tabapayToken',
        :'card_bin' => :'cardBin',
        :'expiration_month' => :'expirationMonth',
        :'expiration_year' => :'expirationYear',
        :'card_owner' => :'cardOwner',
        :'last_four_digits' => :'lastFourDigits',
        :'address' => :'address'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'tabapay_token' => :'String',
        :'card_bin' => :'String',
        :'expiration_month' => :'String',
        :'expiration_year' => :'String',
        :'card_owner' => :'TabaPayDetailsCardOwner',
        :'last_four_digits' => :'String',
        :'address' => :'Address'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MelioPlatformApiClient::TabaPayDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MelioPlatformApiClient::TabaPayDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'tabapay_token')
        self.tabapay_token = attributes[:'tabapay_token']
      end

      if attributes.key?(:'card_bin')
        self.card_bin = attributes[:'card_bin']
      end

      if attributes.key?(:'expiration_month')
        self.expiration_month = attributes[:'expiration_month']
      end

      if attributes.key?(:'expiration_year')
        self.expiration_year = attributes[:'expiration_year']
      end

      if attributes.key?(:'card_owner')
        self.card_owner = attributes[:'card_owner']
      end

      if attributes.key?(:'last_four_digits')
        self.last_four_digits = attributes[:'last_four_digits']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @tabapay_token.nil?
        invalid_properties.push('invalid value for "tabapay_token", tabapay_token cannot be nil.')
      end

      if @card_bin.nil?
        invalid_properties.push('invalid value for "card_bin", card_bin cannot be nil.')
      end

      if @expiration_month.nil?
        invalid_properties.push('invalid value for "expiration_month", expiration_month cannot be nil.')
      end

      pattern = Regexp.new(/^0[1-9]|1[0-2]$/)
      if @expiration_month !~ pattern
        invalid_properties.push("invalid value for \"expiration_month\", must conform to the pattern #{pattern}.")
      end

      if @expiration_year.nil?
        invalid_properties.push('invalid value for "expiration_year", expiration_year cannot be nil.')
      end

      pattern = Regexp.new(/^20(2[2-9]|[3-9]\d)$/)
      if @expiration_year !~ pattern
        invalid_properties.push("invalid value for \"expiration_year\", must conform to the pattern #{pattern}.")
      end

      if @card_owner.nil?
        invalid_properties.push('invalid value for "card_owner", card_owner cannot be nil.')
      end

      if @last_four_digits.nil?
        invalid_properties.push('invalid value for "last_four_digits", last_four_digits cannot be nil.')
      end

      if @last_four_digits.to_s.length > 4
        invalid_properties.push('invalid value for "last_four_digits", the character length must be smaller than or equal to 4.')
      end

      if @last_four_digits.to_s.length < 4
        invalid_properties.push('invalid value for "last_four_digits", the character length must be great than or equal to 4.')
      end

      if @address.nil?
        invalid_properties.push('invalid value for "address", address cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @tabapay_token.nil?
      return false if @card_bin.nil?
      return false if @expiration_month.nil?
      return false if @expiration_month !~ Regexp.new(/^0[1-9]|1[0-2]$/)
      return false if @expiration_year.nil?
      return false if @expiration_year !~ Regexp.new(/^20(2[2-9]|[3-9]\d)$/)
      return false if @card_owner.nil?
      return false if @last_four_digits.nil?
      return false if @last_four_digits.to_s.length > 4
      return false if @last_four_digits.to_s.length < 4
      return false if @address.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] expiration_month Value to be assigned
    def expiration_month=(expiration_month)
      if expiration_month.nil?
        fail ArgumentError, 'expiration_month cannot be nil'
      end

      pattern = Regexp.new(/^0[1-9]|1[0-2]$/)
      if expiration_month !~ pattern
        fail ArgumentError, "invalid value for \"expiration_month\", must conform to the pattern #{pattern}."
      end

      @expiration_month = expiration_month
    end

    # Custom attribute writer method with validation
    # @param [Object] expiration_year Value to be assigned
    def expiration_year=(expiration_year)
      if expiration_year.nil?
        fail ArgumentError, 'expiration_year cannot be nil'
      end

      pattern = Regexp.new(/^20(2[2-9]|[3-9]\d)$/)
      if expiration_year !~ pattern
        fail ArgumentError, "invalid value for \"expiration_year\", must conform to the pattern #{pattern}."
      end

      @expiration_year = expiration_year
    end

    # Custom attribute writer method with validation
    # @param [Object] last_four_digits Value to be assigned
    def last_four_digits=(last_four_digits)
      if last_four_digits.nil?
        fail ArgumentError, 'last_four_digits cannot be nil'
      end

      if last_four_digits.to_s.length > 4
        fail ArgumentError, 'invalid value for "last_four_digits", the character length must be smaller than or equal to 4.'
      end

      if last_four_digits.to_s.length < 4
        fail ArgumentError, 'invalid value for "last_four_digits", the character length must be great than or equal to 4.'
      end

      @last_four_digits = last_four_digits
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tabapay_token == o.tabapay_token &&
          card_bin == o.card_bin &&
          expiration_month == o.expiration_month &&
          expiration_year == o.expiration_year &&
          card_owner == o.card_owner &&
          last_four_digits == o.last_four_digits &&
          address == o.address
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [tabapay_token, card_bin, expiration_month, expiration_year, card_owner, last_four_digits, address].hash
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