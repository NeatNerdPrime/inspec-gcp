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
require 'google/dataproc/property/workflowtemplate_parameters_validation_regex'
require 'google/dataproc/property/workflowtemplate_parameters_validation_values'
module GoogleInSpec
  module Dataproc
    module Property
      class WorkflowTemplateParametersValidation
        attr_reader :regex

        attr_reader :values

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @regex = GoogleInSpec::Dataproc::Property::WorkflowTemplateParametersValidationRegex.new(args['regex'], to_s)
          @values = GoogleInSpec::Dataproc::Property::WorkflowTemplateParametersValidationValues.new(args['values'], to_s)
        end

        def to_s
          "#{@parent_identifier} WorkflowTemplateParametersValidation"
        end
      end
    end
  end
end
