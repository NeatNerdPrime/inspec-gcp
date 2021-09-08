# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
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
require 'google/dataproc/property/cluster_config'
require 'google/dataproc/property/cluster_config_encryption_config'
require 'google/dataproc/property/cluster_config_gce_cluster_config'
require 'google/dataproc/property/cluster_config_initialization_actions'
require 'google/dataproc/property/cluster_config_master_config'
require 'google/dataproc/property/cluster_config_master_config_disk_config'
require 'google/dataproc/property/cluster_config_master_config_managed_group_config'
require 'google/dataproc/property/cluster_config_secondary_worker_config'
require 'google/dataproc/property/cluster_config_secondary_worker_config_disk_config'
require 'google/dataproc/property/cluster_config_secondary_worker_config_managed_group_config'
require 'google/dataproc/property/cluster_config_security_config'
require 'google/dataproc/property/cluster_config_security_config_kerberos_config'
require 'google/dataproc/property/cluster_config_software_config'
require 'google/dataproc/property/cluster_config_worker_config'
require 'google/dataproc/property/cluster_config_worker_config_disk_config'
require 'google/dataproc/property/cluster_config_worker_config_managed_group_config'

# A provider to manage Cloud Dataproc resources.
class DataprocCluster < GcpResourceBase
  name 'google_dataproc_cluster'
  desc 'Cluster'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :cluster_name
  attr_reader :labels
  attr_reader :config
  attr_reader :region

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
    @params = params
  end

  def parse
    @cluster_name = @fetched['clusterName']
    @labels = @fetched['labels']
    @config = GoogleInSpec::Dataproc::Property::ClusterConfig.new(@fetched['config'], to_s)
    @region = @fetched['region']
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Cluster #{@params[:clusterName]}"
  end

  def un_parse
    {
      'cluster_name' => ->(x, _) { x.nil? ? [] : ["its('cluster_name') { should cmp #{x.inspect} }"] },
      'labels' => ->(x, _) { x.nil? ? [] : x.map { |k, v| "its('labels') { should include(#{k.inspect} => #{v.inspect}) }" } },
      'config' => ->(x, _) { x.nil? ? [] : GoogleInSpec::Dataproc::Property::ClusterConfig.un_parse(x, 'config') },
      'region' => ->(x, _) { x.nil? ? [] : ["its('region') { should cmp #{x.inspect} }"] },
    }
  end

  def dump(path, template_path, test_number, ignored_fields)
    name = 'Cluster'

    arr = un_parse.map do |k, v|
      next if ignored_fields.include?(k)
      v.call(method(k.to_sym).call, k)
    end
    template_vars = {
      name: name,
      arr: arr,
      type: 'google_dataproc_cluster',
      identifiers: @params,
      number: test_number,
    }
    File.open("#{path}/#{name}_#{test_number}.rb", 'w') do |file|
      file.write(ERB.new(File.read(template_path)).result_with_hash(template_vars))
    end
  end

  private

  def product_url
    'https://dataproc.googleapis.com/v1/'
  end

  def resource_base_url
    'projects/{{project}}/regions/{{region}}/clusters/{{cluster_name}}'
  end
end
