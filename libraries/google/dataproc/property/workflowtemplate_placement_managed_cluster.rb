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
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_autoscaling_config'
require 'google/dataproc/property/workflowtemplate_auxiliary_node_groups_node_group'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_dataproc_metric_config'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_dataproc_metric_config_metrics'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_encryption_config'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_endpoint_config'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_endpoint_config_http_ports'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_gce_cluster_config'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_gce_cluster_config_confidential_instance_config'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_gce_cluster_config_metadata'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_gce_cluster_config_node_group_affinity'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_gce_cluster_config_reservation_affinity'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_gce_cluster_config_shielded_instance_config'
require 'google/dataproc/property/workflowtemplate_gke_cluster_config'
require 'google/dataproc/property/workflowtemplate_gke_cluster_config_namespaced_gke_deployment_target'
require 'google/dataproc/property/workflowtemplate_gke_cluster_config_node_pool_target'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_initialization_actions'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_lifecycle_config'
require 'google/dataproc/property/workflowtemplate_master_config'
require 'google/dataproc/property/workflowtemplate_master_config_accelerators'
require 'google/dataproc/property/workflowtemplate_master_config_disk_config'
require 'google/dataproc/property/workflowtemplate_master_config_instance_flexibility_policy'
require 'google/dataproc/property/workflowtemplate_master_config_instance_flexibility_policy_instance_selection_list'
require 'google/dataproc/property/workflowtemplate_master_config_instance_flexibility_policy_instance_selection_results'
require 'google/dataproc/property/workflowtemplate_master_config_instance_references'
require 'google/dataproc/property/workflowtemplate_master_config_managed_group_config'
require 'google/dataproc/property/workflowtemplate_master_config_startup_config'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_metastore_config'
require 'google/dataproc/property/workflowtemplate_secondary_worker_config'
require 'google/dataproc/property/workflowtemplate_secondary_worker_config_accelerators'
require 'google/dataproc/property/workflowtemplate_secondary_worker_config_disk_config'
require 'google/dataproc/property/workflowtemplate_secondary_worker_config_instance_flexibility_policy'
require 'google/dataproc/property/workflowtemplate_secondary_worker_config_instance_flexibility_policy_instance_selection_list'
require 'google/dataproc/property/workflowtemplate_secondary_worker_config_instance_flexibility_policy_instance_selection_results'
require 'google/dataproc/property/workflowtemplate_secondary_worker_config_instance_references'
require 'google/dataproc/property/workflowtemplate_secondary_worker_config_managed_group_config'
require 'google/dataproc/property/workflowtemplate_secondary_worker_config_startup_config'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_security_config'
require 'google/dataproc/property/workflowtemplate_security_config_identity_config'
require 'google/dataproc/property/workflowtemplate_security_config_identity_config_user_service_account_mapping'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_security_config_kerberos_config'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_software_config'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_software_config_properties'
require 'google/dataproc/property/workflowtemplate_worker_config'
require 'google/dataproc/property/workflowtemplate_worker_config_accelerators'
require 'google/dataproc/property/workflowtemplate_worker_config_disk_config'
require 'google/dataproc/property/workflowtemplate_worker_config_instance_flexibility_policy'
require 'google/dataproc/property/workflowtemplate_worker_config_instance_flexibility_policy_instance_selection_list'
require 'google/dataproc/property/workflowtemplate_worker_config_instance_flexibility_policy_instance_selection_results'
require 'google/dataproc/property/workflowtemplate_worker_config_instance_references'
require 'google/dataproc/property/workflowtemplate_worker_config_managed_group_config'
require 'google/dataproc/property/workflowtemplate_worker_config_startup_config'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_labels'
module GoogleInSpec
  module Dataproc
    module Property
      class WorkflowTemplatePlacementManagedCluster
        attr_reader :cluster_name

        attr_reader :config

        attr_reader :labels

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @cluster_name = args['clusterName']
          @config = GoogleInSpec::Dataproc::Property::WorkflowTemplatePlacementManagedClusterConfig.new(args['config'], to_s)
          @labels = GoogleInSpec::Dataproc::Property::WorkflowTemplatePlacementManagedClusterLabels.new(args['labels'], to_s)
        end

        def to_s
          "#{@parent_identifier} WorkflowTemplatePlacementManagedCluster"
        end
      end
    end
  end
end