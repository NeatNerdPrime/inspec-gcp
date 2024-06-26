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
require 'google/orgpolicy/property/policy_alternate_spec'
require 'google/orgpolicy/property/policy_alternate_spec_rules'
module GoogleInSpec
  module Orgpolicy
    module Property
      class PolicyAlternate
        attr_reader :launch

        attr_reader :spec

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @launch = args['launch']
          @spec = GoogleInSpec::Orgpolicy::Property::PolicyAlternateSpec.new(args['spec'], to_s)
        end

        def to_s
          "#{@parent_identifier} PolicyAlternate"
        end
      end
    end
  end
end
