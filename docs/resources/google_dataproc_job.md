---
title = "google_dataproc_job Resource"
platform = "gcp"
---

## Syntax
A `google_dataproc_job` is used to test a Google Job resource

## Examples
```
describe google_dataproc_job(job_id: 'value_job_id', project_id: 'value_project_id', region: ' value_region') do
	it { should exist }
	its('driver_output_resource_uri') { should cmp 'value_driveroutputresourceuri' }
	its('driver_control_files_uri') { should cmp 'value_drivercontrolfilesuri' }
	its('job_uuid') { should cmp 'value_jobuuid' }
end

describe google_dataproc_job(job_id: 'doesnotexist', project_id: 'value_project_id', region: ' value_region') do
	it { should_not exist }
end
```

## Properties
Properties that can be accessed from the `google_dataproc_job` resource:


  * `reference`: Encapsulates the full scoping used to reference a job.

    * `project_id`: Optional. The ID of the Google Cloud Platform project that the job belongs to. If specified, must match the request project ID.

    * `job_id`: Optional. The job ID, which must be unique within the project.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or hyphens (-). The maximum length is 100 characters.If not specified by the caller, the job ID will be provided by the server.

  * `placement`: Dataproc job config.

    * `cluster_name`: Required. The name of the cluster where the job will be submitted.

    * `cluster_uuid`: Output only. A cluster UUID generated by the Dataproc service when the job is submitted.

    * `cluster_labels`: Optional. Cluster labels to identify a cluster where the job will be submitted.

      * `additional_properties`:

  * `hadoop_job`: A Dataproc job for running Apache Hadoop MapReduce (https://hadoop.apache.org/docs/current/hadoop-mapreduce-client/hadoop-mapreduce-client-core/MapReduceTutorial.html) jobs on Apache Hadoop YARN (https://hadoop.apache.org/docs/r2.7.1/hadoop-yarn/hadoop-yarn-site/YARN.html).

    * `main_jar_file_uri`: The HCFS URI of the jar file containing the main class. Examples: 'gs://foo-bucket/analytics-binaries/extract-useful-metrics-mr.jar' 'hdfs:/tmp/test-samples/custom-wordcount.jar' 'file:///home/usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar'

    * `main_class`: The name of the driver's main class. The jar file containing the class must be in the default CLASSPATH or specified in jar_file_uris.

    * `args`: Optional. The arguments to pass to the driver. Do not include arguments, such as -libjars or -Dfoo=bar, that can be set as job properties, since a collision might occur that causes an incorrect job submission.

    * `jar_file_uris`: Optional. Jar file URIs to add to the CLASSPATHs of the Hadoop driver and tasks.

    * `file_uris`: Optional. HCFS (Hadoop Compatible Filesystem) URIs of files to be copied to the working directory of Hadoop drivers and distributed tasks. Useful for naively parallel tasks.

    * `archive_uris`: Optional. HCFS URIs of archives to be extracted in the working directory of Hadoop drivers and tasks. Supported file types: .jar, .tar, .tar.gz, .tgz, or .zip.

    * `properties`: Optional. A mapping of property names to values, used to configure Hadoop. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/hadoop/conf/*-site and classes in user code.

      * `additional_properties`:

    * `logging_config`: The runtime logging config of the job.

      * `driver_log_levels`: The per-package log levels for the driver. This can include "root" package name to configure rootLogger. Examples: - 'com.google = FATAL' - 'root = INFO' - 'org.apache = DEBUG'

        * `additional_properties`:

  * `spark_job`: A Dataproc job for running Apache Spark (https://spark.apache.org/) applications on YARN.

    * `main_jar_file_uri`: The HCFS URI of the jar file that contains the main class.

    * `main_class`: The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in SparkJob.jar_file_uris.

    * `args`: Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.

    * `jar_file_uris`: Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks.

    * `file_uris`: Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.

    * `archive_uris`: Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.

    * `properties`: Optional. A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.

      * `additional_properties`:

    * `logging_config`: The runtime logging config of the job.

      * `driver_log_levels`: The per-package log levels for the driver. This can include "root" package name to configure rootLogger. Examples: - 'com.google = FATAL' - 'root = INFO' - 'org.apache = DEBUG'

        * `additional_properties`:

  * `pyspark_job`: A Dataproc job for running Apache PySpark (https://spark.apache.org/docs/0.9.0/python-programming-guide.html) applications on YARN.

    * `main_python_file_uri`: Required. The HCFS URI of the main Python file to use as the driver. Must be a .py file.

    * `args`: Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.

    * `python_file_uris`: Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.

    * `jar_file_uris`: Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks.

    * `file_uris`: Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.

    * `archive_uris`: Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.

    * `properties`: Optional. A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.

      * `additional_properties`:

    * `logging_config`: The runtime logging config of the job.

      * `driver_log_levels`: The per-package log levels for the driver. This can include "root" package name to configure rootLogger. Examples: - 'com.google = FATAL' - 'root = INFO' - 'org.apache = DEBUG'

        * `additional_properties`:

  * `hive_job`: A Dataproc job for running Apache Hive (https://hive.apache.org/) queries on YARN.

    * `query_file_uri`: The HCFS URI of the script that contains Hive queries.

    * `query_list`: A list of queries to run on a cluster.

      * `queries`: Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: "hiveJob": { "queryList": { "queries": [ "query1", "query2", "query3;query4", ] } }

    * `continue_on_failure`: Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.

    * `script_variables`: Optional. Mapping of query variable names to values (equivalent to the Hive command: SET name="value";).

      * `additional_properties`:

    * `properties`: Optional. A mapping of property names and values, used to configure Hive. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/hive/conf/hive-site.xml, and classes in user code.

      * `additional_properties`:

    * `jar_file_uris`: Optional. HCFS URIs of jar files to add to the CLASSPATH of the Hive server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs.

  * `pig_job`: A Dataproc job for running Apache Pig (https://pig.apache.org/) queries on YARN.

    * `query_file_uri`: The HCFS URI of the script that contains the Pig queries.

    * `query_list`: A list of queries to run on a cluster.

      * `queries`: Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: "hiveJob": { "queryList": { "queries": [ "query1", "query2", "query3;query4", ] } }

    * `continue_on_failure`: Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.

    * `script_variables`: Optional. Mapping of query variable names to values (equivalent to the Pig command: name=[value]).

      * `additional_properties`:

    * `properties`: Optional. A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/pig/conf/pig.properties, and classes in user code.

      * `additional_properties`:

    * `jar_file_uris`: Optional. HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.

    * `logging_config`: The runtime logging config of the job.

      * `driver_log_levels`: The per-package log levels for the driver. This can include "root" package name to configure rootLogger. Examples: - 'com.google = FATAL' - 'root = INFO' - 'org.apache = DEBUG'

        * `additional_properties`:

  * `spark_r_job`: A Dataproc job for running Apache SparkR (https://spark.apache.org/docs/latest/sparkr.html) applications on YARN.

    * `main_r_file_uri`: Required. The HCFS URI of the main R file to use as the driver. Must be a .R file.

    * `args`: Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.

    * `file_uris`: Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.

    * `archive_uris`: Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.

    * `properties`: Optional. A mapping of property names to values, used to configure SparkR. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.

      * `additional_properties`:

    * `logging_config`: The runtime logging config of the job.

      * `driver_log_levels`: The per-package log levels for the driver. This can include "root" package name to configure rootLogger. Examples: - 'com.google = FATAL' - 'root = INFO' - 'org.apache = DEBUG'

        * `additional_properties`:

  * `spark_sql_job`: A Dataproc job for running Apache Spark SQL (https://spark.apache.org/sql/) queries.

    * `query_file_uri`: The HCFS URI of the script that contains SQL queries.

    * `query_list`: A list of queries to run on a cluster.

      * `queries`: Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: "hiveJob": { "queryList": { "queries": [ "query1", "query2", "query3;query4", ] } }

    * `script_variables`: Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).

      * `additional_properties`:

    * `properties`: Optional. A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Dataproc API might be overwritten.

      * `additional_properties`:

    * `jar_file_uris`: Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.

    * `logging_config`: The runtime logging config of the job.

      * `driver_log_levels`: The per-package log levels for the driver. This can include "root" package name to configure rootLogger. Examples: - 'com.google = FATAL' - 'root = INFO' - 'org.apache = DEBUG'

        * `additional_properties`:

  * `presto_job`: A Dataproc job for running Presto (https://prestosql.io/) queries. IMPORTANT: The Dataproc Presto Optional Component (https://cloud.google.com/dataproc/docs/concepts/components/presto) must be enabled when the cluster is created to submit a Presto job to the cluster.

    * `query_file_uri`: The HCFS URI of the script that contains SQL queries.

    * `query_list`: A list of queries to run on a cluster.

      * `queries`: Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: "hiveJob": { "queryList": { "queries": [ "query1", "query2", "query3;query4", ] } }

    * `continue_on_failure`: Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.

    * `output_format`: Optional. The format in which query output will be displayed. See the Presto documentation for supported output formats

    * `client_tags`: Optional. Presto client tags to attach to this query

    * `properties`: Optional. A mapping of property names to values. Used to set Presto session properties (https://prestodb.io/docs/current/sql/set-session.html) Equivalent to using the --session flag in the Presto CLI

      * `additional_properties`:

    * `logging_config`: The runtime logging config of the job.

      * `driver_log_levels`: The per-package log levels for the driver. This can include "root" package name to configure rootLogger. Examples: - 'com.google = FATAL' - 'root = INFO' - 'org.apache = DEBUG'

        * `additional_properties`:

  * `trino_job`: A Dataproc job for running Trino (https://trino.io/) queries. IMPORTANT: The Dataproc Trino Optional Component (https://cloud.google.com/dataproc/docs/concepts/components/trino) must be enabled when the cluster is created to submit a Trino job to the cluster.

    * `query_file_uri`: The HCFS URI of the script that contains SQL queries.

    * `query_list`: A list of queries to run on a cluster.

      * `queries`: Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: "hiveJob": { "queryList": { "queries": [ "query1", "query2", "query3;query4", ] } }

    * `continue_on_failure`: Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.

    * `output_format`: Optional. The format in which query output will be displayed. See the Trino documentation for supported output formats

    * `client_tags`: Optional. Trino client tags to attach to this query

    * `properties`: Optional. A mapping of property names to values. Used to set Trino session properties (https://trino.io/docs/current/sql/set-session.html) Equivalent to using the --session flag in the Trino CLI

      * `additional_properties`:

    * `logging_config`: The runtime logging config of the job.

      * `driver_log_levels`: The per-package log levels for the driver. This can include "root" package name to configure rootLogger. Examples: - 'com.google = FATAL' - 'root = INFO' - 'org.apache = DEBUG'

        * `additional_properties`:

  * `flink_job`: A Dataproc job for running Apache Flink applications on YARN.

    * `main_jar_file_uri`: The HCFS URI of the jar file that contains the main class.

    * `main_class`: The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in jarFileUris.

    * `args`: Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision might occur that causes an incorrect job submission.

    * `jar_file_uris`: Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Flink driver and tasks.

    * `savepoint_uri`: Optional. HCFS URI of the savepoint, which contains the last saved progress for starting the current job.

    * `properties`: Optional. A mapping of property names to values, used to configure Flink. Properties that conflict with values set by the Dataproc API might beoverwritten. Can include properties set in/etc/flink/conf/flink-defaults.conf and classes in user code.

      * `additional_properties`:

    * `logging_config`: The runtime logging config of the job.

      * `driver_log_levels`: The per-package log levels for the driver. This can include "root" package name to configure rootLogger. Examples: - 'com.google = FATAL' - 'root = INFO' - 'org.apache = DEBUG'

        * `additional_properties`:

  * `status`: Dataproc job status.

    * `state`: Output only. A state message specifying the overall job state.
    Possible values:
      * STATE_UNSPECIFIED
      * PENDING
      * SETUP_DONE
      * RUNNING
      * CANCEL_PENDING
      * CANCEL_STARTED
      * CANCELLED
      * DONE
      * ERROR
      * ATTEMPT_FAILURE

    * `details`: Optional. Output only. Job state details, such as an error description if the state is ERROR.

    * `state_start_time`: Output only. The time when this state was entered.

    * `substate`: Output only. Additional state information, which includes status reported by the agent.
    Possible values:
      * UNSPECIFIED
      * SUBMITTED
      * QUEUED
      * STALE_STATUS

  * `status_history`: Output only. The previous job status.

    * `state`: Output only. A state message specifying the overall job state.
    Possible values:
      * STATE_UNSPECIFIED
      * PENDING
      * SETUP_DONE
      * RUNNING
      * CANCEL_PENDING
      * CANCEL_STARTED
      * CANCELLED
      * DONE
      * ERROR
      * ATTEMPT_FAILURE

    * `details`: Optional. Output only. Job state details, such as an error description if the state is ERROR.

    * `state_start_time`: Output only. The time when this state was entered.

    * `substate`: Output only. Additional state information, which includes status reported by the agent.
    Possible values:
      * UNSPECIFIED
      * SUBMITTED
      * QUEUED
      * STALE_STATUS

  * `yarn_applications`: Output only. The collection of YARN applications spun up by this job.Beta Feature: This report is available for testing purposes only. It might be changed before final release.

    * `name`: Required. The application name.

    * `state`: Required. The application state.
    Possible values:
      * STATE_UNSPECIFIED
      * NEW
      * NEW_SAVING
      * SUBMITTED
      * ACCEPTED
      * RUNNING
      * FINISHED
      * FAILED
      * KILLED

    * `progress`: Required. The numerical progress of the application, from 1 to 100.

    * `tracking_url`: Optional. The HTTP URL of the ApplicationMaster, HistoryServer, or TimelineServer that provides application-specific information. The URL uses the internal hostname, and requires a proxy server for resolution and, possibly, access.

  * `driver_output_resource_uri`: Output only. A URI pointing to the location of the stdout of the job's driver program.

  * `driver_control_files_uri`: Output only. If present, the location of miscellaneous control files which can be used as part of job setup and handling. If not present, control files might be placed in the same location as driver_output_uri.

  * `labels`: Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.

    * `additional_properties`:

  * `scheduling`: Job scheduling options.

    * `max_failures_per_hour`: Optional. Maximum number of times per hour a driver can be restarted as a result of driver exiting with non-zero code before job is reported failed.A job might be reported as thrashing if the driver exits with a non-zero code four times within a 10-minute window.Maximum value is 10.Note: This restartable job option is not supported in Dataproc workflow templates (https://cloud.google.com/dataproc/docs/concepts/workflows/using-workflows#adding_jobs_to_a_template).

    * `max_failures_total`: Optional. Maximum total number of times a driver can be restarted as a result of the driver exiting with a non-zero code. After the maximum number is reached, the job will be reported as failed.Maximum value is 240.Note: Currently, this restartable job option is not supported in Dataproc workflow templates (https://cloud.google.com/dataproc/docs/concepts/workflows/using-workflows#adding_jobs_to_a_template).

  * `job_uuid`: Output only. A UUID that uniquely identifies a job within the project over time. This is in contrast to a user-settable reference.job_id that might be reused over time.

  * `done`: Output only. Indicates whether the job is completed. If the value is false, the job is still in progress. If true, the job is completed, and status.state field will indicate if it was successful, failed, or cancelled.

  * `driver_scheduling_config`: Driver scheduling configuration.

    * `memory_mb`: Required. The amount of memory in MB the driver is requesting.

    * `vcores`: Required. The number of vCPUs the driver is requesting.


## GCP Permissions

Ensure the [Cloud Dataproc API](https://console.cloud.google.com/apis/library/dataproc.googleapis.com) is enabled for the current project.