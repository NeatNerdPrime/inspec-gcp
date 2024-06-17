+++

title = "google_dataproc_project_region_autoscaling_policies Resource"
platform = "gcp"
draft = false
gh_repo = "inspec-gcp"


[menu.inspec]

title = "google_dataproc_project_region_autoscaling_policies"
identifier = "inspec/resources/gcp/google_dataproc_project_region_autoscaling_policies Resource"
parent = "inspec/resources/gcp"
+++

Use the `google_dataproc_project_region_autoscaling_policies` InSpec audit resource to test the properties of a test a Google ProjectRegionAutoscalingPolicy.

## Installation
{{% inspec_gcp_install %}}

## Syntax
A `google_dataproc_project_region_autoscaling_policies` is used to test a Google ProjectRegionAutoscalingPolicy resource

## Examples
```
    describe google_dataproc_project_region_autoscaling_policies(parent: ' value_parent') do
    it { should exist }
  end
```

## Parameters
Properties that can be accessed from the `google_dataproc_project_region_autoscaling_policies` resource:

See [google_dataproc_project_region_autoscaling_policy.md](google_dataproc_project_region_autoscaling_policy.md) for more detailed information
* `ids`: an array of `google_dataproc_project_region_autoscaling_policy` id
* `names`: an array of `google_dataproc_project_region_autoscaling_policy` name
* `basic_algorithms`: an array of `google_dataproc_project_region_autoscaling_policy` basic_algorithm
* `worker_configs`: an array of `google_dataproc_project_region_autoscaling_policy` worker_config
* `secondary_worker_configs`: an array of `google_dataproc_project_region_autoscaling_policy` secondary_worker_config
* `labels`: an array of `google_dataproc_project_region_autoscaling_policy` labels
## Properties
Properties that can be accessed from the `google_dataproc_project_region_autoscaling_policies` resource:

See [google_dataproc_project_region_autoscaling_policy.md](google_dataproc_project_region_autoscaling_policy.md) for more detailed information
* `ids`: an array of `google_dataproc_project_region_autoscaling_policy` id
* `names`: an array of `google_dataproc_project_region_autoscaling_policy` name
* `basic_algorithms`: an array of `google_dataproc_project_region_autoscaling_policy` basic_algorithm
* `worker_configs`: an array of `google_dataproc_project_region_autoscaling_policy` worker_config
* `secondary_worker_configs`: an array of `google_dataproc_project_region_autoscaling_policy` secondary_worker_config
* `labels`: an array of `google_dataproc_project_region_autoscaling_policy` labels

## Filter Criteria
This resource supports all of the above properties as filter criteria, which can be used
with `where` as a block or a method.

## GCP Permissions

Ensure the [Cloud Dataproc API](https://console.cloud.google.com/apis/library/dataproc.googleapis.com) is enabled for the current project.
