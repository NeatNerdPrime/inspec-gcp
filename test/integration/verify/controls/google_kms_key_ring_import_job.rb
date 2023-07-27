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

title 'Test GCP google_kms_key_ring_import_job resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')
gcp_location = input(:gcp_location, value: 'gcp_location', description: 'GCP location')
gcp_name = input(:gcp_name, value: 'gcp_name', description: 'GCP Name')
control 'google_kms_key_ring_import_job-1.0' do
  impact 1.0
  title 'google_kms_key_ring_import_job resource test'

  describe google_kms_key_ring_import_job(project: gcp_project_id, location: gcp_location, name: gcp_name) do
    it { should exist }
  end

  describe google_kms_key_ring_import_job(project: gcp_project_id, location: 'nonexistent', name: 'nonexistent') do
    it { should_not exist }
  end
end