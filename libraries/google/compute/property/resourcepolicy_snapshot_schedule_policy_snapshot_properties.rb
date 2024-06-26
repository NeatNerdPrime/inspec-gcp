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
require 'google/compute/property/resourcepolicy_snapshot_schedule_policy_snapshot_properties_labels'
module GoogleInSpec
  module Compute
    module Property
      class ResourcePolicySnapshotSchedulePolicySnapshotProperties
        attr_reader :labels

        attr_reader :storage_locations

        attr_reader :guest_flush

        attr_reader :chain_name

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @labels = GoogleInSpec::Compute::Property::ResourcePolicySnapshotSchedulePolicySnapshotPropertiesLabels.new(args['labels'], to_s)
          @storage_locations = args['storageLocations']
          @guest_flush = args['guestFlush']
          @chain_name = args['chainName']
        end

        def to_s
          "#{@parent_identifier} ResourcePolicySnapshotSchedulePolicySnapshotProperties"
        end
      end
    end
  end
end
