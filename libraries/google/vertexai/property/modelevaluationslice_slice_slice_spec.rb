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
require 'google/vertexai/property/modelevaluationslice_slice_slice_spec_configs'
module GoogleInSpec
  module VertexAI
    module Property
      class ModelEvaluationSliceSliceSliceSpec
        attr_reader :configs

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @configs = GoogleInSpec::VertexAI::Property::ModelEvaluationSliceSliceSliceSpecConfigs.new(args['configs'], to_s)
        end

        def to_s
          "#{@parent_identifier} ModelEvaluationSliceSliceSliceSpec"
        end
      end
    end
  end
end
