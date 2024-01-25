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
  module KMS
    module Property
      class CryptoKeyVersionExternalProtectionLevelOptions
        attr_reader :external_key_uri

        attr_reader :ekm_connection_key_path

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @external_key_uri = args['externalKeyUri']
          @ekm_connection_key_path = args['ekmConnectionKeyPath']
        end

        def to_s
          "#{@parent_identifier} CryptoKeyVersionExternalProtectionLevelOptions"
        end
      end
    end
  end
end
