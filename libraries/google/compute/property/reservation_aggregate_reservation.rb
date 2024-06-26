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
require 'google/compute/property/reservation_aggregate_reservation_in_use_resources'
require 'google/compute/property/reservation_aggregate_reservation_reserved_resources'
module GoogleInSpec
  module Compute
    module Property
      class ReservationAggregateReservation
        attr_reader :vm_family

        attr_reader :reserved_resources

        attr_reader :in_use_resources

        attr_reader :workload_type

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @vm_family = args['vmFamily']
          @reserved_resources = GoogleInSpec::Compute::Property::ReservationAggregateReservationReservedResourcesArray.parse(args['reservedResources'], to_s)
          @in_use_resources = GoogleInSpec::Compute::Property::ReservationAggregateReservationInUseResourcesArray.parse(args['inUseResources'], to_s)
          @workload_type = args['workloadType']
        end

        def to_s
          "#{@parent_identifier} ReservationAggregateReservation"
        end
      end
    end
  end
end
