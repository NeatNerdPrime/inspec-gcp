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
require 'google/dataproc/property/workflowtemplate_gke_cluster_config_namespaced_gke_deployment_target'
require 'google/dataproc/property/workflowtemplate_gke_cluster_config_node_pool_target'
module GoogleInSpec
  module Dataproc
    module Property
      class WorkflowTemplateGkeClusterConfig
        attr_reader :namespaced_gke_deployment_target

        attr_reader :gke_cluster_target

        attr_reader :node_pool_target

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @namespaced_gke_deployment_target = GoogleInSpec::Dataproc::Property::WorkflowTemplateGkeClusterConfigNamespacedGkeDeploymentTarget.new(args['namespacedGkeDeploymentTarget'], to_s)
          @gke_cluster_target = args['gkeClusterTarget']
          @node_pool_target = GoogleInSpec::Dataproc::Property::WorkflowTemplateGkeClusterConfigNodePoolTargetArray.parse(args['nodePoolTarget'], to_s)
        end

        def to_s
          "#{@parent_identifier} WorkflowTemplateGkeClusterConfig"
        end
      end
    end
  end
end
