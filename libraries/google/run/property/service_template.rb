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
require 'google/run/property/service_template_annotations'
require 'google/run/property/service_template_containers'
require 'google/run/property/service_template_labels'
require 'google/run/property/service_template_node_selector'
require 'google/run/property/service_template_scaling'
require 'google/run/property/service_template_volumes'
require 'google/run/property/service_template_vpc_access'
require 'google/run/property/service_template_vpc_access_network_interfaces'
module GoogleInSpec
  module Run
    module Property
      class ServiceTemplate
        attr_reader :revision

        attr_reader :labels

        attr_reader :annotations

        attr_reader :scaling

        attr_reader :vpc_access

        attr_reader :timeout

        attr_reader :service_account

        attr_reader :containers

        attr_reader :volumes

        attr_reader :execution_environment

        attr_reader :encryption_key

        attr_reader :max_instance_request_concurrency

        attr_reader :session_affinity

        attr_reader :health_check_disabled

        attr_reader :node_selector

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @revision = args['revision']
          @labels = GoogleInSpec::Run::Property::ServiceTemplateLabels.new(args['labels'], to_s)
          @annotations = GoogleInSpec::Run::Property::ServiceTemplateAnnotations.new(args['annotations'], to_s)
          @scaling = GoogleInSpec::Run::Property::ServiceTemplateScaling.new(args['scaling'], to_s)
          @vpc_access = GoogleInSpec::Run::Property::ServiceTemplateVPCAccess.new(args['vpcAccess'], to_s)
          @timeout = args['timeout']
          @service_account = args['serviceAccount']
          @containers = GoogleInSpec::Run::Property::ServiceTemplateContainersArray.parse(args['containers'], to_s)
          @volumes = GoogleInSpec::Run::Property::ServiceTemplateVolumesArray.parse(args['volumes'], to_s)
          @execution_environment = args['executionEnvironment']
          @encryption_key = args['encryptionKey']
          @max_instance_request_concurrency = args['maxInstanceRequestConcurrency']
          @session_affinity = args['sessionAffinity']
          @health_check_disabled = args['healthCheckDisabled']
          @node_selector = GoogleInSpec::Run::Property::ServiceTemplateNodeSelector.new(args['nodeSelector'], to_s)
        end

        def to_s
          "#{@parent_identifier} ServiceTemplate"
        end
      end
    end
  end
end