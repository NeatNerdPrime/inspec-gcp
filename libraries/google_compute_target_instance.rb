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

# A provider to manage Compute Engine resources.
class ComputeTargetInstance < GcpResourceBase
  name 'google_compute_target_instance'
  desc 'TargetInstance'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :kind
  attr_reader :id
  attr_reader :creation_timestamp
  attr_reader :name
  attr_reader :description
  attr_reader :zone
  attr_reader :nat_policy
  attr_reader :instance
  attr_reader :self_link
  attr_reader :self_link_with_id
  attr_reader :network
  attr_reader :security_policy

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @kind = @fetched['kind']
    @id = @fetched['id']
    @creation_timestamp = @fetched['creationTimestamp']
    @name = @fetched['name']
    @description = @fetched['description']
    @zone = @fetched['zone']
    @nat_policy = @fetched['natPolicy']
    @instance = @fetched['instance']
    @self_link = @fetched['selfLink']
    @self_link_with_id = @fetched['selfLinkWithId']
    @network = @fetched['network']
    @security_policy = @fetched['securityPolicy']
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "TargetInstance #{@params[:targetInstance]}"
  end

  private

  def product_url(_ = nil)
    'https://compute.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/zones/{{zone}}/targetInstances/{{name}}'
  end
end