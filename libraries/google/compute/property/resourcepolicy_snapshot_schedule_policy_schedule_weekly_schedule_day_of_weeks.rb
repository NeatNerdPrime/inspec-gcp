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
  module Compute
    module Property
      class ResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeeks
        attr_reader :day

        attr_reader :start_time

        attr_reader :duration

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @day = args['day']
          @start_time = args['startTime']
          @duration = args['duration']
        end

        def to_s
          "#{@parent_identifier} ResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeeks"
        end
      end

      class ResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeeksArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return ResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeeks.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| ResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeeks.new(v, parent_identifier) }
        end
      end
    end
  end
end
