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
require 'google/compute/property/regionurlmap_path_matchers_route_rules_custom_error_response_policy'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_custom_error_response_policy_error_response_rules'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_header_action'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_header_action_request_headers_to_add'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_header_action_response_headers_to_add'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_http_filter_configs'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_http_filter_metadata'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_match_rules'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_route_action'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_route_action_cors_policy'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_route_action_fault_injection_policy'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_route_action_fault_injection_policy_abort'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_route_action_fault_injection_policy_delay'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_route_action_fault_injection_policy_delay_fixed_delay'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_route_action_max_stream_duration'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_route_action_request_mirror_policy'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_route_action_retry_policy'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_route_action_retry_policy_per_try_timeout'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_route_action_timeout'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_route_action_url_rewrite'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_route_action_weighted_backend_services'
require 'google/compute/property/regionurlmap_path_matchers_route_rules_url_redirect'
module GoogleInSpec
  module Compute
    module Property
      class RegionUrlMapPathMatchersRouteRules
        attr_reader :priority

        attr_reader :description

        attr_reader :match_rules

        attr_reader :service

        attr_reader :route_action

        attr_reader :url_redirect

        attr_reader :header_action

        attr_reader :http_filter_configs

        attr_reader :http_filter_metadata

        attr_reader :custom_error_response_policy

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @priority = args['priority']
          @description = args['description']
          @match_rules = GoogleInSpec::Compute::Property::RegionUrlMapPathMatchersRouteRulesMatchRulesArray.parse(args['matchRules'], to_s)
          @service = args['service']
          @route_action = GoogleInSpec::Compute::Property::RegionUrlMapPathMatchersRouteRulesRouteAction.new(args['routeAction'], to_s)
          @url_redirect = GoogleInSpec::Compute::Property::RegionUrlMapPathMatchersRouteRulesUrlRedirect.new(args['urlRedirect'], to_s)
          @header_action = GoogleInSpec::Compute::Property::RegionUrlMapPathMatchersRouteRulesHeaderAction.new(args['headerAction'], to_s)
          @http_filter_configs = GoogleInSpec::Compute::Property::RegionUrlMapPathMatchersRouteRulesHttpFilterConfigsArray.parse(args['httpFilterConfigs'], to_s)
          @http_filter_metadata = GoogleInSpec::Compute::Property::RegionUrlMapPathMatchersRouteRulesHttpFilterMetadataArray.parse(args['httpFilterMetadata'], to_s)
          @custom_error_response_policy = GoogleInSpec::Compute::Property::RegionUrlMapPathMatchersRouteRulesCustomErrorResponsePolicy.new(args['customErrorResponsePolicy'], to_s)
        end

        def to_s
          "#{@parent_identifier} RegionUrlMapPathMatchersRouteRules"
        end
      end

      class RegionUrlMapPathMatchersRouteRulesArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return RegionUrlMapPathMatchersRouteRules.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| RegionUrlMapPathMatchersRouteRules.new(v, parent_identifier) }
        end
      end
    end
  end
end
