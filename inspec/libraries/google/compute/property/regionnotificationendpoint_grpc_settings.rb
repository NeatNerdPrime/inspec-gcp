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
require 'google/compute/property/regionnotificationendpoint_grpc_settings_resend_interval'
module GoogleInSpec
  module Compute
    module Property
      class RegionNotificationEndpointGrpcSettings
        attr_reader :endpoint

        attr_reader :retry_duration_sec

        attr_reader :payload_name

        attr_reader :authority

        attr_reader :resend_interval

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @endpoint = args['endpoint']
          @retry_duration_sec = args['retryDurationSec']
          @payload_name = args['payloadName']
          @authority = args['authority']
          @resend_interval = GoogleInSpec::Compute::Property::RegionNotificationEndpointGrpcSettingsResendInterval.new(args['resendInterval'], to_s)
        end

        def to_s
          "#{@parent_identifier} RegionNotificationEndpointGrpcSettings"
        end
      end
    end
  end
end