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
require 'google/dataproc/property/workflowtemplate_auxiliary_node_groups_node_group'
require 'google/dataproc/property/workflowtemplate_auxiliary_node_groups_node_group_labels'
require 'google/dataproc/property/workflowtemplate_auxiliary_node_groups_node_group_node_group_config'
require 'google/dataproc/property/workflowtemplate_auxiliary_node_groups_node_group_node_group_config_accelerators'
require 'google/dataproc/property/workflowtemplate_auxiliary_node_groups_node_group_node_group_config_disk_config'
require 'google/dataproc/property/workflowtemplate_auxiliary_node_groups_node_group_node_group_config_instance_flexibility_policy'
require 'google/dataproc/property/workflowtemplate_auxiliary_node_groups_policy_instance_selection_list'
require 'google/dataproc/property/workflowtemplate_auxiliary_node_groups_policy_instance_selection_results'
require 'google/dataproc/property/workflowtemplate_auxiliary_node_groups_node_group_node_group_config_instance_references'
require 'google/dataproc/property/workflowtemplate_auxiliary_node_groups_node_group_node_group_config_managed_group_config'
require 'google/dataproc/property/workflowtemplate_auxiliary_node_groups_node_group_node_group_config_startup_config'
module GoogleInSpec
  module Dataproc
    module Property
      class WorkflowTemplateAuxiliaryNodeGroups
        attr_reader :node_group

        attr_reader :node_group_id

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @node_group = GoogleInSpec::Dataproc::Property::WorkflowTemplateAuxiliaryNodeGroupsNodeGroup.new(args['nodeGroup'], to_s)
          @node_group_id = args['nodeGroupId']
        end

        def to_s
          "#{@parent_identifier} WorkflowTemplateAuxiliaryNodeGroups"
        end
      end

      class WorkflowTemplateAuxiliaryNodeGroupsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return WorkflowTemplateAuxiliaryNodeGroups.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| WorkflowTemplateAuxiliaryNodeGroups.new(v, parent_identifier) }
        end
      end
    end
  end
end
