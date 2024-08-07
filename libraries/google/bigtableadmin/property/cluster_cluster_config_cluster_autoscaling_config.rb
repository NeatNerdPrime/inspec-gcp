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
require 'google/bigtableadmin/property/cluster_cluster_config_cluster_autoscaling_config_autoscaling_limits'
require 'google/bigtableadmin/property/cluster_cluster_config_cluster_autoscaling_config_autoscaling_targets'
module GoogleInSpec
  module Bigtableadmin
    module Property
      class ClusterClusterConfigClusterAutoscalingConfig
        attr_reader :autoscaling_limits

        attr_reader :autoscaling_targets

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @autoscaling_limits = GoogleInSpec::Bigtableadmin::Property::ClusterClusterConfigClusterAutoscalingConfigAutoscalingLimits.new(args['autoscalingLimits'], to_s)
          @autoscaling_targets = GoogleInSpec::Bigtableadmin::Property::ClusterClusterConfigClusterAutoscalingConfigAutoscalingTargets.new(args['autoscalingTargets'], to_s)
        end

        def to_s
          "#{@parent_identifier} ClusterClusterConfigClusterAutoscalingConfig"
        end
      end
    end
  end
end
