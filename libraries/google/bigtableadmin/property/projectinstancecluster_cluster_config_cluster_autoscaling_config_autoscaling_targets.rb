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
  module Bigtableadmin
    module Property
      class ProjectInstanceClusterClusterConfigClusterAutoscalingConfigAutoscalingTargets
        attr_reader :cpu_utilization_percent

        attr_reader :storage_utilization_gib_per_node

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @cpu_utilization_percent = args['cpuUtilizationPercent']
          @storage_utilization_gib_per_node = args['storageUtilizationGibPerNode']
        end

        def to_s
          "#{@parent_identifier} ProjectInstanceClusterClusterConfigClusterAutoscalingConfigAutoscalingTargets"
        end
      end
    end
  end
end
