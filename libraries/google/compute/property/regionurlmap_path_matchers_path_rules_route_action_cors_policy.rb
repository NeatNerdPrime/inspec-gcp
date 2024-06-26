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
      class RegionUrlMapPathMatchersPathRulesRouteActionCorsPolicy
        attr_reader :allow_origins

        attr_reader :allow_origin_regexes

        attr_reader :allow_methods

        attr_reader :allow_headers

        attr_reader :expose_headers

        attr_reader :max_age

        attr_reader :allow_credentials

        attr_reader :disabled

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @allow_origins = args['allowOrigins']
          @allow_origin_regexes = args['allowOriginRegexes']
          @allow_methods = args['allowMethods']
          @allow_headers = args['allowHeaders']
          @expose_headers = args['exposeHeaders']
          @max_age = args['maxAge']
          @allow_credentials = args['allowCredentials']
          @disabled = args['disabled']
        end

        def to_s
          "#{@parent_identifier} RegionUrlMapPathMatchersPathRulesRouteActionCorsPolicy"
        end
      end
    end
  end
end
