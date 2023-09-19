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

title 'Test GCP google_vertex_ai_tensorboards_experiments resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  tensorboards_experiment = input('tensorboards_experiment', value: {
  "name": "value_name",
  "region": "value_region",
  "parent": "value_parent",
  "description": "value_description",
  "source": "value_source",
  "display_name": "value_displayname",
  "create_time": "value_createtime",
  "update_time": "value_updatetime",
  "etag": "value_etag"
}, description: 'tensorboards_experiment description')
control 'google_vertex_ai_tensorboards_experiments-1.0' do
  impact 1.0
  title 'google_vertex_ai_tensorboards_experiments resource test'

      describe google_vertex_ai_tensorboards_experiments(parent: "projects/#{gcp_project_id}/locations/#{tensorboards_experiment['region']}/tensorboards/#{tensorboards_experiment['tensorboard']}", region: tensorboards_experiment['region']) do
      it { should exist }
    end
end
