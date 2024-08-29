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

title 'Test GCP google_apigee_endpoint_attachment resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  endpoint_attachment = input('endpoint_attachment', value: {
  "name": "value_name",
  "parent": "value_parent",
  "host": "value_host",
  "connection_state": "value_connectionstate",
  "service_attachment": "value_serviceattachment",
  "location": "value_location",
  "state": "value_state"
}, description: 'endpoint_attachment description')
control 'google_apigee_endpoint_attachment-1.0' do
  impact 1.0
  title 'google_apigee_endpoint_attachment resource test'

  describe google_apigee_endpoint_attachment(name: endpoint_attachment['name']) do
  	it { should exist }
  	its('host') { should cmp endpoint_attachment['host'] }
  	its('connection_state') { should cmp endpoint_attachment['connection_state'] }
  	its('service_attachment') { should cmp endpoint_attachment['service_attachment'] }
  	its('location') { should cmp endpoint_attachment['location'] }
  	its('name') { should cmp endpoint_attachment['name'] }
  	its('state') { should cmp endpoint_attachment['state'] }

  end

  describe google_apigee_endpoint_attachment(name: "does_not_exit") do
  	it { should_not exist }
  end
end
