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
module GoogleInSpec
  module Compute
    module Property
      class RegionUrlMapPathMatchersRouteRulesCustomErrorResponsePolicyErrorResponseRules
        attr_reader :match_response_codes

        attr_reader :path

        attr_reader :override_response_code

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @match_response_codes = args['matchResponseCodes']
          @path = args['path']
          @override_response_code = args['overrideResponseCode']
        end

        def to_s
          "#{@parent_identifier} RegionUrlMapPathMatchersRouteRulesCustomErrorResponsePolicyErrorResponseRules"
        end
      end

      class RegionUrlMapPathMatchersRouteRulesCustomErrorResponsePolicyErrorResponseRulesArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return RegionUrlMapPathMatchersRouteRulesCustomErrorResponsePolicyErrorResponseRules.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| RegionUrlMapPathMatchersRouteRulesCustomErrorResponsePolicyErrorResponseRules.new(v, parent_identifier) }
        end
      end
    end
  end
end
