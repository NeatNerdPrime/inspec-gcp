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

title 'Test GCP google_compute_resource_policy resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  resource_policy = input('resource_policy', value: {
  "project": "value_project",
  "region": "us-central1",
  "kind": "compute#resourcePolicy",
  "id": "value_id",
  "creation_timestamp": "value_creationtimestamp",
  "self_link": "value_selflink",
  "self_link_with_id": "value_selflinkwithid",
  "description": "value_description",
  "name": "schedule-1",
  "status": "value_status"
}, description: 'resource_policy description')
control 'google_compute_resource_policy-1.0' do
  impact 1.0
  title 'google_compute_resource_policy resource test'

  describe google_compute_resource_policy(project: gcp_project_id, region: resource_policy['region'], resourcePolicy: resource_policy['resourcePolicy']) do
  	it { should exist }
  	its('kind') { should cmp resource_policy['kind'] }
  	its('id') { should cmp resource_policy['id'] }
  	its('creation_timestamp') { should cmp resource_policy['creation_timestamp'] }
  	its('self_link') { should cmp resource_policy['self_link'] }
  	its('self_link_with_id') { should cmp resource_policy['self_link_with_id'] }
  	its('region') { should cmp resource_policy['region'] }
  	its('description') { should cmp resource_policy['description'] }
  	its('name') { should cmp resource_policy['name'] }
  	its('status') { should cmp resource_policy['status'] }

  end

  describe google_compute_resource_policy(project: gcp_project_id, region: resource_policy['region'], resourcePolicy: resource_policy['resourcePolicy']) do
  	it { should_not exist }
  end
end
