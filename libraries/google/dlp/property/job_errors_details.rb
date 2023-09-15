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
require 'google/dlp/property/job_errors_details_status'
require 'google/dlp/property/job_errors_details_status_details'
module GoogleInSpec
  module DLP
    module Property
      class JobErrorsDetails
        attr_reader :status

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @status = GoogleInSpec::DLP::Property::JobErrorsDetailsStatus.new(args['status'], to_s)
        end

        def to_s
          "#{@parent_identifier} JobErrorsDetails"
        end
      end
    end
  end
end