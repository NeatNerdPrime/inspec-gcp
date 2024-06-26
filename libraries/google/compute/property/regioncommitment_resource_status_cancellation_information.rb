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
require 'google/compute/property/regioncommitment_resource_status_cancellation_information_canceled_commitment'
require 'google/compute/property/regioncommitment_resource_status_cancellation_information_cancellation_cap'
require 'google/compute/property/regioncommitment_resource_status_cancellation_information_cancellation_fee'
module GoogleInSpec
  module Compute
    module Property
      class RegionCommitmentResourceStatusCancellationInformation
        attr_reader :cancellation_fee

        attr_reader :cancellation_fee_expiration_timestamp

        attr_reader :cancellation_cap

        attr_reader :canceled_commitment

        attr_reader :canceled_commitment_last_updated_timestamp

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @cancellation_fee = GoogleInSpec::Compute::Property::RegionCommitmentResourceStatusCancellationInformationCancellationFee.new(args['cancellationFee'], to_s)
          @cancellation_fee_expiration_timestamp = args['cancellationFeeExpirationTimestamp']
          @cancellation_cap = GoogleInSpec::Compute::Property::RegionCommitmentResourceStatusCancellationInformationCancellationCap.new(args['cancellationCap'], to_s)
          @canceled_commitment = GoogleInSpec::Compute::Property::RegionCommitmentResourceStatusCancellationInformationCanceledCommitment.new(args['canceledCommitment'], to_s)
          @canceled_commitment_last_updated_timestamp = args['canceledCommitmentLastUpdatedTimestamp']
        end

        def to_s
          "#{@parent_identifier} RegionCommitmentResourceStatusCancellationInformation"
        end
      end
    end
  end
end
