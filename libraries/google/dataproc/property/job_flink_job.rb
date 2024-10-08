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
require 'google/dataproc/property/job_flink_job_logging_config'
require 'google/dataproc/property/job_flink_job_logging_config_driver_log_levels'
require 'google/dataproc/property/job_flink_job_properties'
module GoogleInSpec
  module Dataproc
    module Property
      class JobFlinkJob
        attr_reader :main_jar_file_uri

        attr_reader :main_class

        attr_reader :args

        attr_reader :jar_file_uris

        attr_reader :savepoint_uri

        attr_reader :properties

        attr_reader :logging_config

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @main_jar_file_uri = args['mainJarFileUri']
          @main_class = args['mainClass']
          @args = args['args']
          @jar_file_uris = args['jarFileUris']
          @savepoint_uri = args['savepointUri']
          @properties = GoogleInSpec::Dataproc::Property::JobFlinkJobProperties.new(args['properties'], to_s)
          @logging_config = GoogleInSpec::Dataproc::Property::JobFlinkJobLoggingConfig.new(args['loggingConfig'], to_s)
        end

        def to_s
          "#{@parent_identifier} JobFlinkJob"
        end
      end
    end
  end
end