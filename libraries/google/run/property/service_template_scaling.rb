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
  module Run
    module Property
      class ServiceTemplateScaling
        attr_reader :min_instance_count

        attr_reader :max_instance_count

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @min_instance_count = args['minInstanceCount']
          @max_instance_count = args['maxInstanceCount']
        end

        def to_s
          "#{@parent_identifier} ServiceTemplateScaling"
        end
      end
    end
  end
end
