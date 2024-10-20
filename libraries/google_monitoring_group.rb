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

# A provider to manage Cloud (Stackdriver) Monitoring resources.
class MonitoringGroup < GcpResourceBase
  name 'google_monitoring_group'
  desc 'Group'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :name
  attr_reader :display_name
  attr_reader :parent_name
  attr_reader :filter
  attr_reader :is_cluster

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @name = @fetched['name']
    @display_name = @fetched['displayName']
    @parent_name = @fetched['parentName']
    @filter = @fetched['filter']
    @is_cluster = @fetched['isCluster']
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Group #{@params[:name]}"
  end

  private

  def product_url(_ = nil)
    'https://monitoring.googleapis.com/v3/'
  end

  def resource_base_url
    '{{name}}'
  end
end
