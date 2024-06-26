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
require 'google/compute/property/regionurlmap_tests_headers'
module GoogleInSpec
  module Compute
    module Property
      class RegionUrlMapTests
        attr_reader :description

        attr_reader :host

        attr_reader :path

        attr_reader :backend_service_weight

        attr_reader :headers

        attr_reader :service

        attr_reader :expected_url_redirect

        attr_reader :expected_output_url

        attr_reader :expected_redirect_response_code

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @description = args['description']
          @host = args['host']
          @path = args['path']
          @backend_service_weight = args['backendServiceWeight']
          @headers = GoogleInSpec::Compute::Property::RegionUrlMapTestsHeadersArray.parse(args['headers'], to_s)
          @service = args['service']
          @expected_url_redirect = args['expectedUrlRedirect']
          @expected_output_url = args['expectedOutputUrl']
          @expected_redirect_response_code = args['expectedRedirectResponseCode']
        end

        def to_s
          "#{@parent_identifier} RegionUrlMapTests"
        end
      end

      class RegionUrlMapTestsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return RegionUrlMapTests.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| RegionUrlMapTests.new(v, parent_identifier) }
        end
      end
    end
  end
end
