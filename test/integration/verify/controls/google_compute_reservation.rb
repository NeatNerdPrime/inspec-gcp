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

title 'Test GCP google_compute_reservation resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  reservation = input('reservation', value: {
  "project": "value_project",
  "reservation": "value_reservation",
  "zone": "value_zone",
  "kind": "value_kind",
  "id": "value_id",
  "creation_timestamp": "value_creationtimestamp",
  "self_link": "value_selflink",
  "self_link_with_id": "value_selflinkwithid",
  "description": "value_description",
  "name": "value_name",
  "commitment": "value_commitment",
  "status": "value_status",
  "delete_at_time": "value_deleteattime"
}, description: 'reservation description')
control 'google_compute_reservation-1.0' do
  impact 1.0
  title 'google_compute_reservation resource test'

  describe google_compute_reservation(project: gcp_project_id, name: reservation['name'], zone: reservation['zone']) do
  	it { should exist }
  	its('kind') { should cmp reservation['kind'] }
  	its('id') { should cmp reservation['id'] }
  	its('creation_timestamp') { should cmp reservation['creation_timestamp'] }
  	its('self_link') { should cmp reservation['self_link'] }
  	its('self_link_with_id') { should cmp reservation['self_link_with_id'] }
  	its('zone') { should cmp reservation['zone'] }
  	its('description') { should cmp reservation['description'] }
  	its('name') { should cmp reservation['name'] }
  	its('commitment') { should cmp reservation['commitment'] }
  	its('status') { should cmp reservation['status'] }
  	its('delete_at_time') { should cmp reservation['delete_at_time'] }

  end

  describe google_compute_reservation(project: gcp_project_id, name: "does_not_exit", zone: reservation['zone']) do
  	it { should_not exist }
  end
end
