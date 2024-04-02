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
module GoogleInSpec
  module Compute
    module Property
      class RegionUrlMapPathMatchersRouteRulesRouteAction
        attr_reader :weighted_backend_services

        attr_reader :url_rewrite

        attr_reader :timeout

        attr_reader :retry_policy

        attr_reader :request_mirror_policy

        attr_reader :cors_policy

        attr_reader :fault_injection_policy

        attr_reader :max_stream_duration

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @weighted_backend_services = GoogleInSpec::Compute::Property::RegionUrlMapPathMatchersRouteRulesRouteActionWeightedBackendServicesArray.parse(args['weightedBackendServices'], to_s)
          @url_rewrite = GoogleInSpec::Compute::Property::RegionUrlMapPathMatchersRouteRulesRouteActionUrlRewrite.new(args['urlRewrite'], to_s)
          @timeout = GoogleInSpec::Compute::Property::RegionUrlMapPathMatchersRouteRulesRouteActionTimeout.new(args['timeout'], to_s)
          @retry_policy = GoogleInSpec::Compute::Property::RegionUrlMapPathMatchersRouteRulesRouteActionRetryPolicy.new(args['retryPolicy'], to_s)
          @request_mirror_policy = GoogleInSpec::Compute::Property::RegionUrlMapPathMatchersRouteRulesRouteActionRequestMirrorPolicy.new(args['requestMirrorPolicy'], to_s)
          @cors_policy = GoogleInSpec::Compute::Property::RegionUrlMapPathMatchersRouteRulesRouteActionCorsPolicy.new(args['corsPolicy'], to_s)
          @fault_injection_policy = GoogleInSpec::Compute::Property::RegionUrlMapPathMatchersRouteRulesRouteActionFaultInjectionPolicy.new(args['faultInjectionPolicy'], to_s)
          @max_stream_duration = GoogleInSpec::Compute::Property::RegionUrlMapPathMatchersRouteRulesRouteActionMaxStreamDuration.new(args['maxStreamDuration'], to_s)
        end

        def to_s
          "#{@parent_identifier} RegionUrlMapPathMatchersRouteRulesRouteAction"
        end
      end
    end
  end
end
