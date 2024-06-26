---
title: About the google_compute_target_vpn_gateways resource
platform: gcp
---

## Syntax
A `google_compute_target_vpn_gateways` is used to test a Google TargetVpnGateway resource

## Examples
```
    describe google_compute_target_vpn_gateways(project: 'chef-gcp-inspec', region: ' value_region') do
    it { should exist }
  end
```

## Properties
Properties that can be accessed from the `google_compute_target_vpn_gateways` resource:

See [google_compute_target_vpn_gateway.md](google_compute_target_vpn_gateway.md) for more detailed information
  * `kinds`: an array of `google_compute_target_vpn_gateway` kind
  * `ids`: an array of `google_compute_target_vpn_gateway` id
  * `creation_timestamps`: an array of `google_compute_target_vpn_gateway` creation_timestamp
  * `names`: an array of `google_compute_target_vpn_gateway` name
  * `descriptions`: an array of `google_compute_target_vpn_gateway` description
  * `regions`: an array of `google_compute_target_vpn_gateway` region
  * `networks`: an array of `google_compute_target_vpn_gateway` network
  * `tunnels`: an array of `google_compute_target_vpn_gateway` tunnels
  * `statuses`: an array of `google_compute_target_vpn_gateway` status
  * `self_links`: an array of `google_compute_target_vpn_gateway` self_link
  * `forwarding_rules`: an array of `google_compute_target_vpn_gateway` forwarding_rules
  * `labels`: an array of `google_compute_target_vpn_gateway` labels
  * `label_fingerprints`: an array of `google_compute_target_vpn_gateway` label_fingerprint

## Filter Criteria
This resource supports all of the above properties as filter criteria, which can be used
with `where` as a block or a method.

## GCP Permissions

Ensure the [Compute Engine API](https://console.cloud.google.com/apis/library/compute.googleapis.com/) is enabled for the current project.
