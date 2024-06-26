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
require 'google/compute/property/resourcepolicy_vm_maintenance_policy_concurrency_control_group'
require 'google/compute/property/resourcepolicy_vm_maintenance_policy_maintenance_window'
require 'google/compute/property/resourcepolicy_vm_maintenance_policy_maintenance_window_daily_maintenance_window'
module GoogleInSpec
  module Compute
    module Property
      class ResourcePolicyVmMaintenancePolicy
        attr_reader :maintenance_window

        attr_reader :concurrency_control_group

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @maintenance_window = GoogleInSpec::Compute::Property::ResourcePolicyVmMaintenancePolicyMaintenanceWindow.new(args['maintenanceWindow'], to_s)
          @concurrency_control_group = GoogleInSpec::Compute::Property::ResourcePolicyVmMaintenancePolicyConcurrencyControlGroup.new(args['concurrencyControlGroup'], to_s)
        end

        def to_s
          "#{@parent_identifier} ResourcePolicyVmMaintenancePolicy"
        end
      end
    end
  end
end
