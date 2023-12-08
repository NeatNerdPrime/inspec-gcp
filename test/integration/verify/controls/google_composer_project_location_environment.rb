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

title 'Test GCP google_composer_project_location_environment resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

project_location_environment = input('project_location_environment', value: {
  "parent": "projects/ppradhan/locations/us-central1",
  "name": "projects/ppradhan/locations/us-central1/environments/example-composer-env",
  "state": "RUNNING",
  },
  description: 'project_location_environment description')

control 'google_composer_project_location_environment-1.0' do
  impact 1.0
  title 'google_composer_project_location_environment resource test'

  describe google_composer_project_location_environment(name: project_location_environment['name']) do
  	it { should exist }
  	its('name') { should cmp project_location_environment['name'] }
  	its('state') { should cmp project_location_environment['state'] }
  end

  describe google_composer_project_location_environment(name: "does_not_exist") do
  	it { should_not exist }
  end
end