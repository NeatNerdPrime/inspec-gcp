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
  module Dataproc
    module Property
      class WorkflowTemplateMasterConfigInstanceFlexibilityPolicyInstanceSelectionList
        attr_reader :machine_types

        attr_reader :rank

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @machine_types = args['machineTypes']
          @rank = args['rank']
        end

        def to_s
          "#{@parent_identifier} WorkflowTemplateMasterConfigInstanceFlexibilityPolicyInstanceSelectionList"
        end
      end

      class WorkflowTemplateMasterConfigInstanceFlexibilityPolicyInstanceSelectionListArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return WorkflowTemplateMasterConfigInstanceFlexibilityPolicyInstanceSelectionList.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| WorkflowTemplateMasterConfigInstanceFlexibilityPolicyInstanceSelectionList.new(v, parent_identifier) }
        end
      end
    end
  end
end
