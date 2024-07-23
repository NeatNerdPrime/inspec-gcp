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
      class ProjectLocationSessionRuntimeInfoCurrentUsage
        attr_reader :milli_dcu

        attr_reader :shuffle_storage_gb

        attr_reader :milli_dcu_premium

        attr_reader :shuffle_storage_gb_premium

        attr_reader :milli_accelerator

        attr_reader :accelerator_type

        attr_reader :snapshot_time

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @milli_dcu = args['milliDcu']
          @shuffle_storage_gb = args['shuffleStorageGb']
          @milli_dcu_premium = args['milliDcuPremium']
          @shuffle_storage_gb_premium = args['shuffleStorageGbPremium']
          @milli_accelerator = args['milliAccelerator']
          @accelerator_type = args['acceleratorType']
          @snapshot_time = args['snapshotTime']
        end

        def to_s
          "#{@parent_identifier} ProjectLocationSessionRuntimeInfoCurrentUsage"
        end
      end
    end
  end
end
