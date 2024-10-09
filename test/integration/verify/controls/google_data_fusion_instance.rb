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

title 'Test GCP google_data_fusion_instance resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  instance = input('instance', value: {
  "name": "inspec-instance",
  "machine_type": "n1-standard-1",
  "tag_1": "foo",
  "tag_2": "bar",
  "metadata_key": "123",
  "metadata_value": "asdf",
  "sa_scope": "https://www.googleapis.com/auth/compute.readonly",
  "startup_script": "echo hi > /test.txt"
}, description: 'instance description')
control 'google_data_fusion_instance-1.0' do
  impact 1.0
  title 'google_data_fusion_instance resource test'

  describe google_data_fusion_instance(name: instance['name']) do
  	it { should exist }
  	its('name') { should cmp instance['name'] }
  	its('description') { should cmp instance['description'] }
  	its('type') { should cmp instance['type'] }
  	its('create_time') { should cmp instance['create_time'] }
  	its('update_time') { should cmp instance['update_time'] }
  	its('state') { should cmp instance['state'] }
  	its('state_message') { should cmp instance['state_message'] }
  	its('service_endpoint') { should cmp instance['service_endpoint'] }
  	its('zone') { should cmp instance['zone'] }
  	its('version') { should cmp instance['version'] }
  	its('service_account') { should cmp instance['service_account'] }
  	its('display_name') { should cmp instance['display_name'] }
  	its('api_endpoint') { should cmp instance['api_endpoint'] }
  	its('gcs_bucket') { should cmp instance['gcs_bucket'] }
  	its('p4service_account') { should cmp instance['p4service_account'] }
  	its('tenant_project_id') { should cmp instance['tenant_project_id'] }
  	its('dataproc_service_account') { should cmp instance['dataproc_service_account'] }
  	its('workforce_identity_service_endpoint') { should cmp instance['workforce_identity_service_endpoint'] }
  	its('patch_revision') { should cmp instance['patch_revision'] }

  end

  describe google_data_fusion_instance(name: "does_not_exit") do
  	it { should_not exist }
  end
end
