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
require 'google/compute/property/machineimage_instance_properties_scheduling_local_ssd_recovery_timeout'
require 'google/compute/property/machineimage_instance_properties_scheduling_node_affinities'
module GoogleInSpec
  module Compute
    module Property
      class MachineImageInstancePropertiesScheduling
        attr_reader :on_host_maintenance

        attr_reader :automatic_restart

        attr_reader :preemptible

        attr_reader :node_affinities

        attr_reader :min_node_cpus

        attr_reader :location_hint

        attr_reader :provisioning_model

        attr_reader :instance_termination_action

        attr_reader :local_ssd_recovery_timeout

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @on_host_maintenance = args['onHostMaintenance']
          @automatic_restart = args['automaticRestart']
          @preemptible = args['preemptible']
          @node_affinities = GoogleInSpec::Compute::Property::MachineImageInstancePropertiesSchedulingNodeAffinitiesArray.parse(args['nodeAffinities'], to_s)
          @min_node_cpus = args['minNodeCpus']
          @location_hint = args['locationHint']
          @provisioning_model = args['provisioningModel']
          @instance_termination_action = args['instanceTerminationAction']
          @local_ssd_recovery_timeout = GoogleInSpec::Compute::Property::MachineImageInstancePropertiesSchedulingLocalSsdRecoveryTimeout.new(args['localSsdRecoveryTimeout'], to_s)
        end

        def to_s
          "#{@parent_identifier} MachineImageInstancePropertiesScheduling"
        end
      end
    end
  end
end