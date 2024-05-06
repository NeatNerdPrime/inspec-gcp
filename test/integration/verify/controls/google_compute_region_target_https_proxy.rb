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

title 'Test GCP google_compute_region_target_https_proxy resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  region_target_https_proxy = input('region_target_https_proxy', value: {
  "project": "value_project",
  "region": "value_region",
  "target_https_proxy": "value_targethttpsproxy",
  "kind": "value_kind",
  "id": "value_id",
  "creation_timestamp": "value_creationtimestamp",
  "name": "value_name",
  "description": "value_description",
  "self_link": "value_selflink",
  "self_link_with_id": "value_selflinkwithid",
  "url_map": "value_urlmap",
  "certificate_map": "value_certificatemap",
  "quic_override": "value_quicoverride",
  "ssl_policy": "value_sslpolicy",
  "server_tls_policy": "value_servertlspolicy",
  "authentication": "value_authentication",
  "authorization_policy": "value_authorizationpolicy",
  "authorization": "value_authorization",
  "fingerprint": "value_fingerprint",
  "tls_early_data": "value_tlsearlydata"
}, description: 'region_target_https_proxy description')
control 'google_compute_region_target_https_proxy-1.0' do
  impact 1.0
  title 'google_compute_region_target_https_proxy resource test'

  describe google_compute_region_target_https_proxy(project: gcp_project_id, region: region_target_https_proxy['region'], targetHttpsProxy: region_target_https_proxy['targetHttpsProxy']) do
  	it { should exist }
  	its('kind') { should cmp region_target_https_proxy['kind'] }
  	its('id') { should cmp region_target_https_proxy['id'] }
  	its('creation_timestamp') { should cmp region_target_https_proxy['creation_timestamp'] }
  	its('name') { should cmp region_target_https_proxy['name'] }
  	its('description') { should cmp region_target_https_proxy['description'] }
  	its('self_link') { should cmp region_target_https_proxy['self_link'] }
  	its('self_link_with_id') { should cmp region_target_https_proxy['self_link_with_id'] }
  	its('url_map') { should cmp region_target_https_proxy['url_map'] }
  	its('certificate_map') { should cmp region_target_https_proxy['certificate_map'] }
  	its('quic_override') { should cmp region_target_https_proxy['quic_override'] }
  	its('ssl_policy') { should cmp region_target_https_proxy['ssl_policy'] }
  	its('region') { should cmp region_target_https_proxy['region'] }
  	its('server_tls_policy') { should cmp region_target_https_proxy['server_tls_policy'] }
  	its('authentication') { should cmp region_target_https_proxy['authentication'] }
  	its('authorization_policy') { should cmp region_target_https_proxy['authorization_policy'] }
  	its('authorization') { should cmp region_target_https_proxy['authorization'] }
  	its('fingerprint') { should cmp region_target_https_proxy['fingerprint'] }
  	its('tls_early_data') { should cmp region_target_https_proxy['tls_early_data'] }

  end

  describe google_compute_region_target_https_proxy(project: gcp_project_id, region: region_target_https_proxy['region'], targetHttpsProxy: region_target_https_proxy['targetHttpsProxy']) do
  	it { should_not exist }
  end
end