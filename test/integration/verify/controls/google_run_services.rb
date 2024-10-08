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

title 'Test GCP google_run_services resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

service = input('service', value: {
  "name": "projects/ppradhan/locations/us-central1/services/inspec-function-1",
  "parent": "projects/ppradhan/locations/us-central1",
  "uri": "https://inspec-function-1-a6zd2ygfca-uc.a.run.app",
  "generation": "1",
  "createTime": "2024-07-22T10:31:56.322132Z",
  "updateTime": "2024-07-22T10:31:56.322132Z",
  "creator": "service-165434197229@gcf-admin-robot.iam.gserviceaccount.com",
  "ingress": "INGRESS_TRAFFIC_ALL"
}, description: 'service description')
control 'google_run_services-1.0' do
  impact 1.0
  title 'google_run_services resource test'

    describe google_run_services(parent: service['parent']) do
      it { should exist }
      its('names') { should include service['name'] }
      its('uris') { should include service['uri'] }
      its('generations') { should include service['generation'] }
      its('create_times') { should include service['createTime'] }
      its('update_times') { should include service['updateTime'] }
      its('creators') { should include service['creator'] }
      its('ingresses') { should include service['ingress'] }
    end
end
