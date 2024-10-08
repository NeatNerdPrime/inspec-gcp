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
require 'google/run/property/service_template_vpc_access_network_interfaces'
module GoogleInSpec
  module Run
    module Property
      class ServiceTemplateVPCAccess
        attr_reader :connector

        attr_reader :egress

        attr_reader :network_interfaces

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @connector = args['connector']
          @egress = args['egress']
          @network_interfaces = GoogleInSpec::Run::Property::ServiceTemplateVPCAccessNetworkInterfacesArray.parse(args['networkInterfaces'], to_s)
        end

        def to_s
          "#{@parent_identifier} ServiceTemplateVPCAccess"
        end
      end
    end
  end
end
