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
require 'google/composer/property/projectlocationenvironment_config_node_config_ip_allocation_policy'
module GoogleInSpec
  module Composer
    module Property
      class ProjectLocationEnvironmentConfigNodeConfig
        attr_reader :location

        attr_reader :machine_type

        attr_reader :network

        attr_reader :subnetwork

        attr_reader :disk_size_gb

        attr_reader :oauth_scopes

        attr_reader :service_account

        attr_reader :tags

        attr_reader :ip_allocation_policy

        attr_reader :enable_ip_masq_agent

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @location = args['location']
          @machine_type = args['machineType']
          @network = args['network']
          @subnetwork = args['subnetwork']
          @disk_size_gb = args['diskSizeGb']
          @oauth_scopes = args['oauthScopes']
          @service_account = args['serviceAccount']
          @tags = args['tags']
          @ip_allocation_policy = GoogleInSpec::Composer::Property::ProjectLocationEnvironmentConfigNodeConfigIpAllocationPolicy.new(args['ipAllocationPolicy'], to_s)
          @enable_ip_masq_agent = args['enableIpMasqAgent']
        end

        def to_s
          "#{@parent_identifier} ProjectLocationEnvironmentConfigNodeConfig"
        end
      end
    end
  end
end