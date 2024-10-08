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
class DataprocSessions < GcpResourceBase
  name 'google_dataproc_sessions'
  desc 'Session plural resource'
  supports platform: 'gcp'

  attr_reader :table

  filter_table_config = FilterTable.create

  filter_table_config.add(:names, field: :name)
  filter_table_config.add(:uuids, field: :uuid)
  filter_table_config.add(:create_times, field: :create_time)
  filter_table_config.add(:jupyter_sessions, field: :jupyter_session)
  filter_table_config.add(:runtime_infos, field: :runtime_info)
  filter_table_config.add(:states, field: :state)
  filter_table_config.add(:state_messages, field: :state_message)
  filter_table_config.add(:state_times, field: :state_time)
  filter_table_config.add(:creators, field: :creator)
  filter_table_config.add(:labels, field: :labels)
  filter_table_config.add(:runtime_configs, field: :runtime_config)
  filter_table_config.add(:environment_configs, field: :environment_config)
  filter_table_config.add(:users, field: :user)
  filter_table_config.add(:state_histories, field: :state_history)
  filter_table_config.add(:session_templates, field: :session_template)

  filter_table_config.connect(self, :table)

  def initialize(params = {})
    super(params.merge({ use_http_transport: true }))
    @params = params
    @table = fetch_wrapped_resource('sessions')
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
      'name' => ->(obj) { [:name, obj['name']] },
      'uuid' => ->(obj) { [:uuid, obj['uuid']] },
      'createTime' => ->(obj) { [:create_time, obj['createTime']] },
      'jupyterSession' => ->(obj) { [:jupyter_session, GoogleInSpec::Dataproc::Property::SessionJupyterSession.new(obj['jupyterSession'], to_s)] },
      'runtimeInfo' => ->(obj) { [:runtime_info, GoogleInSpec::Dataproc::Property::SessionRuntimeInfo.new(obj['runtimeInfo'], to_s)] },
      'state' => ->(obj) { [:state, obj['state']] },
      'stateMessage' => ->(obj) { [:state_message, obj['stateMessage']] },
      'stateTime' => ->(obj) { [:state_time, obj['stateTime']] },
      'creator' => ->(obj) { [:creator, obj['creator']] },
      'labels' => ->(obj) { [:labels, GoogleInSpec::Dataproc::Property::SessionLabels.new(obj['labels'], to_s)] },
      'runtimeConfig' => ->(obj) { [:runtime_config, GoogleInSpec::Dataproc::Property::SessionRuntimeConfig.new(obj['runtimeConfig'], to_s)] },
      'environmentConfig' => ->(obj) { [:environment_config, GoogleInSpec::Dataproc::Property::SessionEnvironmentConfig.new(obj['environmentConfig'], to_s)] },
      'user' => ->(obj) { [:user, obj['user']] },
      'stateHistory' => ->(obj) { [:state_history, GoogleInSpec::Dataproc::Property::SessionStateHistoryArray.parse(obj['stateHistory'], to_s)] },
      'sessionTemplate' => ->(obj) { [:session_template, obj['sessionTemplate']] },
    }
  end

  private

  def product_url(_ = nil)
    'https://dataproc.googleapis.com/v1/'
  end

  def resource_base_url
    '{{parent}}/sessions'
  end
end
