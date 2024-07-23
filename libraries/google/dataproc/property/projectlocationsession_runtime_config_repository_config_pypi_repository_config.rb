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
      class ProjectLocationSessionRuntimeConfigRepositoryConfigPypiRepositoryConfig
        attr_reader :pypi_repository

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @pypi_repository = args['pypiRepository']
        end

        def to_s
          "#{@parent_identifier} ProjectLocationSessionRuntimeConfigRepositoryConfigPypiRepositoryConfig"
        end
      end
    end
  end
end
