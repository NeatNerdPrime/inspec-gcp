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
      class RegionCommitmentResources
        attr_reader :type

        attr_reader :amount

        attr_reader :accelerator_type

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @type = args['type']
          @amount = args['amount']
          @accelerator_type = args['acceleratorType']
        end

        def to_s
          "#{@parent_identifier} RegionCommitmentResources"
        end
      end

      class RegionCommitmentResourcesArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return RegionCommitmentResources.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| RegionCommitmentResources.new(v, parent_identifier) }
        end
      end
    end
  end
end
