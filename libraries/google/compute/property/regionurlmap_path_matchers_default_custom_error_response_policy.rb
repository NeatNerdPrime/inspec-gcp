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
require 'google/compute/property/regionurlmap_path_matchers_default_custom_error_response_policy_error_response_rules'
module GoogleInSpec
  module Compute
    module Property
      class RegionUrlMapPathMatchersDefaultCustomErrorResponsePolicy
        attr_reader :error_response_rules

        attr_reader :error_service

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @error_response_rules = GoogleInSpec::Compute::Property::RegionUrlMapPathMatchersDefaultCustomErrorResponsePolicyErrorResponseRulesArray.parse(args['errorResponseRules'], to_s)
          @error_service = args['errorService']
        end

        def to_s
          "#{@parent_identifier} RegionUrlMapPathMatchersDefaultCustomErrorResponsePolicy"
        end
      end
    end
  end
end
