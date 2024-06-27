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

title 'Test GCP google_bigtableadmin_project_instance_cluster resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  project_instance_cluster = input('project_instance_cluster', value: {
  "name": "value_name",
  "parent": "value_parent",
  "location": "value_location",
  "state": "value_state",
  "default_storage_type": "value_defaultstoragetype"
}, description: 'project_instance_cluster description')
control 'google_bigtableadmin_project_instance_cluster-1.0' do
  impact 1.0
  title 'google_bigtableadmin_project_instance_cluster resource test'

  describe google_bigtableadmin_project_instance_cluster(name: project_instance_cluster['name']) do
  	it { should exist }
  	its('name') { should cmp project_instance_cluster['name'] }
  	its('location') { should cmp project_instance_cluster['location'] }
  	its('state') { should cmp project_instance_cluster['state'] }
  	its('default_storage_type') { should cmp project_instance_cluster['default_storage_type'] }

  end

  describe google_bigtableadmin_project_instance_cluster(name: "does_not_exit") do
  	it { should_not exist }
  end
end
