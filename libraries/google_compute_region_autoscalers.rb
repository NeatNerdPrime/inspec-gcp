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
class ComputeRegionAutoscalers < GcpResourceBase
  name 'google_compute_region_autoscalers'
  desc 'RegionAutoscaler plural resource'
  supports platform: 'gcp'

  attr_reader :table

  filter_table_config = FilterTable.create

  filter_table_config.add(:kinds, field: :kind)
  filter_table_config.add(:ids, field: :id)
  filter_table_config.add(:creation_timestamps, field: :creation_timestamp)
  filter_table_config.add(:names, field: :name)
  filter_table_config.add(:descriptions, field: :description)
  filter_table_config.add(:targets, field: :target)
  filter_table_config.add(:autoscaling_policies, field: :autoscaling_policy)
  filter_table_config.add(:zones, field: :zone)
  filter_table_config.add(:regions, field: :region)
  filter_table_config.add(:self_links, field: :self_link)
  filter_table_config.add(:self_link_with_ids, field: :self_link_with_id)
  filter_table_config.add(:statuses, field: :status)
  filter_table_config.add(:status_details, field: :status_details)
  filter_table_config.add(:recommended_sizes, field: :recommended_size)
  filter_table_config.add(:scaling_schedule_statuses, field: :scaling_schedule_status)

  filter_table_config.connect(self, :table)

  def initialize(params = {})
    super(params.merge({ use_http_transport: true }))
    @params = params
    @table = fetch_wrapped_resource('items')
  end

  def fetch_wrapped_resource(wrap_path)
    # fetch_resource returns an array of responses (to handle pagination)
    result = @connection.fetch_all(product_url, resource_base_url, @params, 'Get')
    return if result.nil?

    # Conversion of string -> object hash to symbol -> object hash that InSpec needs
    converted = []
    result.each do |response|
      next if response.nil? || !response.key?(wrap_path)
      response[wrap_path].each do |hash|
        hash_with_symbols = {}
        hash.each_key do |key|
          name, value = transform(key, hash)
          hash_with_symbols[name] = value
        end
        converted.push(hash_with_symbols)
      end
    end

    converted
  end

  def transform(key, value)
    return transformers[key].call(value) if transformers.key?(key)

    [key.to_sym, value]
  end

  def transformers
    {
      'kind' => ->(obj) { [:kind, obj['kind']] },
      'id' => ->(obj) { [:id, obj['id']] },
      'creationTimestamp' => ->(obj) { [:creation_timestamp, obj['creationTimestamp']] },
      'name' => ->(obj) { [:name, obj['name']] },
      'description' => ->(obj) { [:description, obj['description']] },
      'target' => ->(obj) { [:target, obj['target']] },
      'autoscalingPolicy' => ->(obj) { [:autoscaling_policy, GoogleInSpec::Compute::Property::RegionAutoscalerAutoscalingPolicy.new(obj['autoscalingPolicy'], to_s)] },
      'zone' => ->(obj) { [:zone, obj['zone']] },
      'region' => ->(obj) { [:region, obj['region']] },
      'selfLink' => ->(obj) { [:self_link, obj['selfLink']] },
      'selfLinkWithId' => ->(obj) { [:self_link_with_id, obj['selfLinkWithId']] },
      'status' => ->(obj) { [:status, obj['status']] },
      'statusDetails' => ->(obj) { [:status_details, GoogleInSpec::Compute::Property::RegionAutoscalerStatusDetailsArray.parse(obj['statusDetails'], to_s)] },
      'recommendedSize' => ->(obj) { [:recommended_size, obj['recommendedSize']] },
      'scalingScheduleStatus' => ->(obj) { [:scaling_schedule_status, GoogleInSpec::Compute::Property::RegionAutoscalerScalingScheduleStatus.new(obj['scalingScheduleStatus'], to_s)] },
    }
  end

  private

  def product_url(_ = nil)
    'https://compute.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/regions/{{region}}/autoscalers'
  end
end
