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

title 'Test GCP google_vertex_ai_hyperparameter_tuning_job resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  hyperparameter_tuning_job = input('hyperparameter_tuning_job', value: {
  "name": "9200900561803673600",
  "region": "us-central1",
  "parent": "projects/165434197229/locations/us-central1/hyperparameterTuningJobs/",
  "state": "JOB_STATE_RUNNING",
  "end_time": "value_endtime",
  "update_time": "value_updatetime",
  "start_time": "value_starttime",
  "create_time": "value_createtime",
  "display_name": "inspec-hyper-test-hyperparameter-tuning-job"
}, description: 'hyperparameter_tuning_job description')
control 'google_vertex_ai_hyperparameter_tuning_job-1.0' do
  impact 1.0
  title 'google_vertex_ai_hyperparameter_tuning_job resource test'

  describe google_vertex_ai_hyperparameter_tuning_job(name: "projects/#{gcp_project_id}/locations/#{hyperparameter_tuning_job['region']}/hyperparameterTuningJobs/#{hyperparameter_tuning_job['name']}", region: hyperparameter_tuning_job['region']) do
  	it { should exist }
  	its('state') { should cmp hyperparameter_tuning_job['state'] }
  	its('end_time') { should cmp hyperparameter_tuning_job['end_time'] }
  	its('update_time') { should cmp hyperparameter_tuning_job['update_time'] }
  	its('start_time') { should cmp hyperparameter_tuning_job['start_time'] }
  	its('create_time') { should cmp hyperparameter_tuning_job['create_time'] }
  	its('display_name') { should cmp hyperparameter_tuning_job['display_name'] }
  	its('name') { should cmp hyperparameter_tuning_job['name'] }

  end

  describe google_vertex_ai_hyperparameter_tuning_job(name: "does_not_exit", region: hyperparameter_tuning_job['region']) do
  	it { should_not exist }
  end
end