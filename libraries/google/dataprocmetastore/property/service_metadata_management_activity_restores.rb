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
  module DataprocMetastore
    module Property
      class ServiceMetadataManagementActivityRestores
        attr_reader :start_time

        attr_reader :end_time

        attr_reader :state

        attr_reader :backup

        attr_reader :type

        attr_reader :details

        attr_reader :backup_location

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @start_time = args['startTime']
          @end_time = args['endTime']
          @state = args['state']
          @backup = args['backup']
          @type = args['type']
          @details = args['details']
          @backup_location = args['backupLocation']
        end

        def to_s
          "#{@parent_identifier} ServiceMetadataManagementActivityRestores"
        end
      end

      class ServiceMetadataManagementActivityRestoresArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return ServiceMetadataManagementActivityRestores.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| ServiceMetadataManagementActivityRestores.new(v, parent_identifier) }
        end
      end
    end
  end
end
