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

title 'Test GCP google_vertex_ai_nas_jobs resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  nas_job = input('nas_job', value: {
  "name": "value_name",
  "region": "value_region",
  "parent": "value_parent",
  "end_time": "value_endtime",
  "state": "value_state",
  "create_time": "value_createtime",
  "display_name": "value_displayname",
  "start_time": "value_starttime",
  "update_time": "value_updatetime"
}, description: 'nas_job description')
control 'google_vertex_ai_nas_jobs-1.0' do
  impact 1.0
  title 'google_vertex_ai_nas_jobs resource test'

      describe google_vertex_ai_nas_jobs(parent: "projects/#{gcp_project_id}/locations/#{nas_job['region']}", region: nas_job['region']) do
      it { should exist }
    end
end