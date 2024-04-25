# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    Type: MMv1     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------
require 'google/compute/property/regionsslpolicy_warnings_data'
module GoogleInSpec
  module Compute
    module Property
      class RegionSslPolicyWarnings
        attr_reader :code

        attr_reader :message

        attr_reader :data

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @code = args['code']
          @message = args['message']
          @data = GoogleInSpec::Compute::Property::RegionSslPolicyWarningsDataArray.parse(args['data'], to_s)
        end

        def to_s
          "#{@parent_identifier} RegionSslPolicyWarnings"
        end
      end

      class RegionSslPolicyWarningsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return RegionSslPolicyWarnings.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| RegionSslPolicyWarnings.new(v, parent_identifier) }
        end
      end
    end
  end
end
