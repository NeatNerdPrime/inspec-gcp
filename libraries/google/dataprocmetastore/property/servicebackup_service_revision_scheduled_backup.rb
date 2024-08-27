# frozen_string_literal: false

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
require 'google/dataprocmetastore/property/servicebackup_service_revision_scheduled_backup_latest_backup'
module GoogleInSpec
  module DataprocMetastore
    module Property
      class ServiceBackupServiceRevisionScheduledBackup
        attr_reader :enabled

        attr_reader :cron_schedule

        attr_reader :time_zone

        attr_reader :next_scheduled_time

        attr_reader :backup_location

        attr_reader :latest_backup

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @enabled = args['enabled']
          @cron_schedule = args['cronSchedule']
          @time_zone = args['timeZone']
          @next_scheduled_time = args['nextScheduledTime']
          @backup_location = args['backupLocation']
          @latest_backup = GoogleInSpec::DataprocMetastore::Property::ServiceBackupServiceRevisionScheduledBackupLatestBackup.new(args['latestBackup'], to_s)
        end

        def to_s
          "#{@parent_identifier} ServiceBackupServiceRevisionScheduledBackup"
        end
      end
    end
  end
end
