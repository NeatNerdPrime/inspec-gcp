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
require 'google/orgpolicy/property/policy_alternate_spec_rules_condition'
require 'google/orgpolicy/property/policy_alternate_spec_rules_values'
module GoogleInSpec
  module Orgpolicy
    module Property
      class PolicyAlternateSpecRules
        attr_reader :condition

        attr_reader :deny_all

        attr_reader :allow_all

        attr_reader :enforce

        attr_reader :values

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @condition = GoogleInSpec::Orgpolicy::Property::PolicyAlternateSpecRulesCondition.new(args['condition'], to_s)
          @deny_all = args['denyAll']
          @allow_all = args['allowAll']
          @enforce = args['enforce']
          @values = GoogleInSpec::Orgpolicy::Property::PolicyAlternateSpecRulesValues.new(args['values'], to_s)
        end

        def to_s
          "#{@parent_identifier} PolicyAlternateSpecRules"
        end
      end

      class PolicyAlternateSpecRulesArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return PolicyAlternateSpecRules.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| PolicyAlternateSpecRules.new(v, parent_identifier) }
        end
      end
    end
  end
end
