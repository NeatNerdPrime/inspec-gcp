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
  module DataLossPrevention
    module Property
      class DlpJobInspectDetailsDeidentifyStatsRequestedOptionsDetails
        attr_reader :type

        attr_reader :field1

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @type = args['type']
          @field1 = args['field1']
        end

        def to_s
          "#{@parent_identifier} DlpJobInspectDetailsDeidentifyStatsRequestedOptionsDetails"
        end
      end

      class DlpJobInspectDetailsDeidentifyStatsRequestedOptionsDetailsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return DlpJobInspectDetailsDeidentifyStatsRequestedOptionsDetails.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| DlpJobInspectDetailsDeidentifyStatsRequestedOptionsDetails.new(v, parent_identifier) }
        end
      end
    end
  end
end