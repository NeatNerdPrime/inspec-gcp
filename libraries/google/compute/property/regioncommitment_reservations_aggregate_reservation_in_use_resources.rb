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
require 'google/compute/property/regioncommitment_reservations_aggregate_reservation_in_use_resources_accelerator'
module GoogleInSpec
  module Compute
    module Property
      class RegionCommitmentReservationsAggregateReservationInUseResources
        attr_reader :accelerator

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @accelerator = GoogleInSpec::Compute::Property::RegionCommitmentReservationsAggregateReservationInUseResourcesAccelerator.new(args['accelerator'], to_s)
        end

        def to_s
          "#{@parent_identifier} RegionCommitmentReservationsAggregateReservationInUseResources"
        end
      end

      class RegionCommitmentReservationsAggregateReservationInUseResourcesArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return RegionCommitmentReservationsAggregateReservationInUseResources.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| RegionCommitmentReservationsAggregateReservationInUseResources.new(v, parent_identifier) }
        end
      end
    end
  end
end
