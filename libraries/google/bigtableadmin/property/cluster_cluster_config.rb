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
require 'google/bigtableadmin/property/cluster_cluster_config_cluster_autoscaling_config'
require 'google/bigtableadmin/property/cluster_cluster_config_cluster_autoscaling_config_autoscaling_limits'
require 'google/bigtableadmin/property/cluster_cluster_config_cluster_autoscaling_config_autoscaling_targets'
module GoogleInSpec
  module Bigtableadmin
    module Property
      class ClusterClusterConfig
        attr_reader :cluster_autoscaling_config

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @cluster_autoscaling_config = GoogleInSpec::Bigtableadmin::Property::ClusterClusterConfigClusterAutoscalingConfig.new(args['clusterAutoscalingConfig'], to_s)
        end

        def to_s
          "#{@parent_identifier} ClusterClusterConfig"
        end
      end
    end
  end
end
