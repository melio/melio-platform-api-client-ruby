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
  class DeliveryPreferenceType
    ACH = "ach".freeze
    CHECK = "check".freeze
    VIRTUAL = "virtual".freeze
    DOMESTIC_WIRE = "domestic-wire".freeze
    OVERNIGHT_CHECK = "overnight-check".freeze
    EXPRESS_CHECK = "express-check".freeze
    EXPEDITED_ACH = "expedited-ach".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = DeliveryPreferenceType.constants.select { |c| DeliveryPreferenceType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #DeliveryPreferenceType" if constantValues.empty?
      value
    end
  end
end
