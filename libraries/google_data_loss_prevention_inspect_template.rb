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
require 'gcp_backend'
require 'google/datalossprevention/property/inspecttemplate_inspect_config'
require 'google/datalossprevention/property/inspecttemplate_inspect_config_custom_info_types'
require 'google/datalossprevention/property/inspecttemplate_inspect_config_info_types'
require 'google/datalossprevention/property/inspecttemplate_inspect_config_limits'
require 'google/datalossprevention/property/inspecttemplate_inspect_config_limits_max_findings_per_info_type'
require 'google/datalossprevention/property/inspecttemplate_inspect_config_rule_set'

# A provider to manage Data loss prevention resources.
class DataLossPreventionInspectTemplate < GcpResourceBase
  name 'google_data_loss_prevention_inspect_template'
  desc 'InspectTemplate'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :name
  attr_reader :description
  attr_reader :display_name
  attr_reader :inspect_config
  attr_reader :parent

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @name = @fetched['name']
    @description = @fetched['description']
    @display_name = @fetched['displayName']
    @inspect_config = GoogleInSpec::DataLossPrevention::Property::InspectTemplateInspectConfig.new(@fetched['inspectConfig'], to_s)
    @parent = @fetched['parent']
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "InspectTemplate #{@params[:name]}"
  end

  private

  def product_url(_ = nil)
    'https://dlp.googleapis.com/v2/'
  end

  def resource_base_url
    '{{parent}}/inspectTemplates/{{name}}'
  end
end