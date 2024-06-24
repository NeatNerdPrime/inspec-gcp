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
  module Dataproc
    module Property
      class WorkflowTemplateWorkerConfigDiskConfig
        attr_reader :boot_disk_type

        attr_reader :boot_disk_size_gb

        attr_reader :num_local_ssds

        attr_reader :local_ssd_interface

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @boot_disk_type = args['bootDiskType']
          @boot_disk_size_gb = args['bootDiskSizeGb']
          @num_local_ssds = args['numLocalSsds']
          @local_ssd_interface = args['localSsdInterface']
        end

        def to_s
          "#{@parent_identifier} WorkflowTemplateWorkerConfigDiskConfig"
        end
      end
    end
  end
end
