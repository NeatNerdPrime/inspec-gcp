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
require 'google/compute/property/regionsslpolicy_tls_settings_proxy_tls_context_validation_context_sds_config_grpc_service_config'
require 'google/compute/property/regionsslpolicy_tsptcvcscgscc_credentials'
require 'google/compute/property/regionsslpolicy_tsptcvcscgscccf_plugin'
require 'google/compute/property/regionsslpolicy_tsptcvcscgsccc_certificates'
module GoogleInSpec
  module Compute
    module Property
      class RegionSslPolicyTlsSettingsProxyTlsContextValidationContextSdsConfig
        attr_reader :grpc_service_config

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @grpc_service_config = GoogleInSpec::Compute::Property::RegionSslPolicyTlsSettingsProxyTlsContextValidationContextSdsConfigGrpcServiceConfig.new(args['grpcServiceConfig'], to_s)
        end

        def to_s
          "#{@parent_identifier} RegionSslPolicyTlsSettingsProxyTlsContextValidationContextSdsConfig"
        end
      end
    end
  end
end
