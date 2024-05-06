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

title 'Test GCP google_compute_region_commitments resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

region_commitment = input('region_commitment', value: {
  "project": "ppradhan",
  "region": "us-central1",
}, description: 'region_commitment description')

control 'google_compute_region_commitments-1.0' do
  impact 1.0
  title 'google_compute_region_commitments resource test'

      describe google_compute_region_commitments(project: gcp_project_id, region: region_commitment['region']) do
      it { should exist }
    end
end