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

title 'Test GCP google_dataproc_session resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

session = input('session', value: {
  "name": "projects/ppradhan/locations/us-central1/sessions/inspec-runtime-0ae1-b98f4174",
  "parent": "projects/ppradhan/locations/us-central1",
  "uuid": "0b8d8483-b1ff-4f67-8e34-8d57987430a2",
  "create_time": "2024-08-19T06:59:23.721658Z",
  "state": "value_state",
  "state_message": "value_statemessage",
  "state_time": "value_statetime",
  "creator": "balasubramanian.s@chef.io",
  "user": "value_user",
  "session_template": "projects/ppradhan/locations/us-central1/sessionTemplates/inspec-runtime-0ae1"
}, description: 'session description')
control 'google_dataproc_session-1.0' do
  impact 1.0
  title 'google_dataproc_session resource test'

  describe google_dataproc_session(name: session['name']) do
  	it { should exist }
  	its('name') { should cmp session['name'] }
  	its('uuid') { should cmp session['uuid'] }
  	its('create_time') { should cmp session['create_time'] }
  	its('state') { should cmp session['state'] }
  	its('state_message') { should cmp session['state_message'] }
  	its('state_time') { should cmp session['state_time'] }
  	its('creator') { should cmp session['creator'] }
  	its('user') { should cmp session['user'] }
  	its('session_template') { should cmp session['session_template'] }
  end

  describe google_dataproc_session(name: "does_not_exit") do
  	it { should_not exist }
  end
end
