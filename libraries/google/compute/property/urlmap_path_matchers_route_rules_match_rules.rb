# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
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
require 'google/compute/property/urlmap_path_matchers_route_rules_match_rules_header_matches'
require 'google/compute/property/urlmap_path_matchers_route_rules_match_rules_metadata_filters'
require 'google/compute/property/urlmap_path_matchers_route_rules_match_rules_query_parameter_matches'
module GoogleInSpec
  module Compute
    module Property
      class UrlMapPathMatchersRouteRulesMatchRules
        attr_reader :full_path_match

        attr_reader :header_matches

        attr_reader :ignore_case

        attr_reader :metadata_filters

        attr_reader :prefix_match

        attr_reader :query_parameter_matches

        attr_reader :regex_match

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @full_path_match = args['fullPathMatch']
          @header_matches = GoogleInSpec::Compute::Property::UrlMapPathMatchersRouteRulesMatchRulesHeaderMatchesArray.parse(args['headerMatches'], to_s)
          @ignore_case = args['ignoreCase']
          @metadata_filters = GoogleInSpec::Compute::Property::UrlMapPathMatchersRouteRulesMatchRulesMetadataFiltersArray.parse(args['metadataFilters'], to_s)
          @prefix_match = args['prefixMatch']
          @query_parameter_matches = GoogleInSpec::Compute::Property::UrlMapPathMatchersRouteRulesMatchRulesQueryParameterMatchesArray.parse(args['queryParameterMatches'], to_s)
          @regex_match = args['regexMatch']
        end

        def to_s
          "#{@parent_identifier} UrlMapPathMatchersRouteRulesMatchRules"
        end
      end

      class UrlMapPathMatchersRouteRulesMatchRulesArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return UrlMapPathMatchersRouteRulesMatchRules.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| UrlMapPathMatchersRouteRulesMatchRules.new(v, parent_identifier) }
        end
      end
    end
  end
end
