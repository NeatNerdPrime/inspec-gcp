# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
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
require 'google/dataproc/property/cluster_config_worker_config_disk_config'
require 'google/dataproc/property/cluster_config_worker_config_managed_group_config'
module GoogleInSpec
  module Dataproc
    module Property
      class ClusterConfigWorkerConfig
        attr_reader :arguments

        attr_reader :num_instances

        attr_reader :instance_names

        attr_reader :image_uri

        attr_reader :machine_type_uri

        attr_reader :disk_config

        attr_reader :is_preemptible

        attr_reader :managed_group_config

        def initialize(arguments = nil, parent_identifier = nil)
          @arguments = arguments
          return if arguments.nil?
          @parent_identifier = parent_identifier
          @num_instances = arguments['numInstances']
          @instance_names = arguments['instanceNames']
          @image_uri = arguments['imageUri']
          @machine_type_uri = arguments['machineTypeUri']
          @disk_config = GoogleInSpec::Dataproc::Property::ClusterConfigWorkerConfigDiskConfig.new(arguments['diskConfig'], to_s)
          @is_preemptible = arguments['isPreemptible']
          @managed_group_config = GoogleInSpec::Dataproc::Property::ClusterConfigWorkerConfigManagedGroupConfig.new(arguments['managedGroupConfig'], to_s)
        end

        def to_s
          "#{@parent_identifier} ClusterConfigWorkerConfig"
        end

        def self.un_parse(item, current_path)
          return if item.nil?
          way_to_parse = {
            'num_instances' => ->(x, path) { x.nil? ? [] : ["its('#{path}.num_instances') { should cmp #{x.inspect} }"] },
            'instance_names' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.instance_names') { should include #{single.inspect} }" } },
            'image_uri' => ->(x, path) { x.nil? ? [] : ["its('#{path}.image_uri') { should cmp #{x.inspect} }"] },
            'machine_type_uri' => ->(x, path) { x.nil? ? [] : ["its('#{path}.machine_type_uri') { should cmp #{x.inspect} }"] },
            'disk_config' => ->(x, path) { x.nil? ? [] : GoogleInSpec::Dataproc::Property::ClusterConfigWorkerConfigDiskConfig.un_parse(x, "#{path}.disk_config") },
            'is_preemptible' => ->(x, path) { x.nil? ? [] : ["its('#{path}.is_preemptible') { should cmp #{x.inspect} }"] },
            'managed_group_config' => ->(x, path) { x.nil? ? [] : GoogleInSpec::Dataproc::Property::ClusterConfigWorkerConfigManagedGroupConfig.un_parse(x, "#{path}.managed_group_config") },
          }
          way_to_parse.map do |k, v|
            v.call(item.method(k).call, current_path)
          end
        end

        def to_json(*_args)
          @arguments.to_json
        end

        # other is a string representation of this object
        def ==(other)
          @arguments == JSON.parse(other)
        end
      end
    end
  end
end
