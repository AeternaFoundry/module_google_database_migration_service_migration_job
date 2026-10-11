output "database_migration_service_migration_jobs_id" {
  description = "Map of id values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no id are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_migration_service_migration_jobs_create_time" {
  description = "Map of create_time values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no create_time are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "database_migration_service_migration_jobs_deletion_policy" {
  description = "Map of deletion_policy values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "database_migration_service_migration_jobs_desired_state" {
  description = "Map of desired_state values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no desired_state are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.desired_state if v.desired_state != null && length(v.desired_state) > 0 }
}
output "database_migration_service_migration_jobs_destination" {
  description = "Map of destination values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no destination are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.destination if v.destination != null && length(v.destination) > 0 }
}
output "database_migration_service_migration_jobs_display_name" {
  description = "Map of display_name values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no display_name are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "database_migration_service_migration_jobs_dump_flags" {
  description = "Map of dump_flags values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no dump_flags are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => one(v.dump_flags) if v.dump_flags != null && length(v.dump_flags) > 0 }
}
output "database_migration_service_migration_jobs_dump_path" {
  description = "Map of dump_path values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no dump_path are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.dump_path if v.dump_path != null && length(v.dump_path) > 0 }
}
output "database_migration_service_migration_jobs_dump_type" {
  description = "Map of dump_type values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no dump_type are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.dump_type if v.dump_type != null && length(v.dump_type) > 0 }
}
output "database_migration_service_migration_jobs_effective_labels" {
  description = "Map of effective_labels values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no effective_labels are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "database_migration_service_migration_jobs_error" {
  description = "Map of error values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no error are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.error if v.error != null && length(v.error) > 0 }
}
output "database_migration_service_migration_jobs_labels" {
  description = "Map of labels values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no labels are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "database_migration_service_migration_jobs_location" {
  description = "Map of location values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no location are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "database_migration_service_migration_jobs_migration_job_id" {
  description = "Map of migration_job_id values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no migration_job_id are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.migration_job_id if v.migration_job_id != null && length(v.migration_job_id) > 0 }
}
output "database_migration_service_migration_jobs_name" {
  description = "Map of name values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no name are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "database_migration_service_migration_jobs_objects_config" {
  description = "Map of objects_config values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no objects_config are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => one(v.objects_config) if v.objects_config != null && length(v.objects_config) > 0 }
}
output "database_migration_service_migration_jobs_performance_config" {
  description = "Map of performance_config values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no performance_config are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => one(v.performance_config) if v.performance_config != null && length(v.performance_config) > 0 }
}
output "database_migration_service_migration_jobs_phase" {
  description = "Map of phase values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no phase are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.phase if v.phase != null && length(v.phase) > 0 }
}
output "database_migration_service_migration_jobs_postgres_homogeneous_config" {
  description = "Map of postgres_homogeneous_config values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no postgres_homogeneous_config are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => one(v.postgres_homogeneous_config) if v.postgres_homogeneous_config != null && length(v.postgres_homogeneous_config) > 0 }
}
output "database_migration_service_migration_jobs_project" {
  description = "Map of project values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no project are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "database_migration_service_migration_jobs_reverse_ssh_connectivity" {
  description = "Map of reverse_ssh_connectivity values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no reverse_ssh_connectivity are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => one(v.reverse_ssh_connectivity) if v.reverse_ssh_connectivity != null && length(v.reverse_ssh_connectivity) > 0 }
}
output "database_migration_service_migration_jobs_source" {
  description = "Map of source values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no source are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.source if v.source != null && length(v.source) > 0 }
}
output "database_migration_service_migration_jobs_state" {
  description = "Map of state values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no state are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.state if v.state != null && length(v.state) > 0 }
}
output "database_migration_service_migration_jobs_static_ip_connectivity" {
  description = "Map of static_ip_connectivity values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no static_ip_connectivity are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => one(v.static_ip_connectivity) if v.static_ip_connectivity != null && length(v.static_ip_connectivity) > 0 }
}
output "database_migration_service_migration_jobs_stop_on_warnings" {
  description = "Map of stop_on_warnings values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no stop_on_warnings are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.stop_on_warnings if v.stop_on_warnings != null }
}
output "database_migration_service_migration_jobs_terraform_labels" {
  description = "Map of terraform_labels values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no terraform_labels are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "database_migration_service_migration_jobs_type" {
  description = "Map of type values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no type are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => v.type if v.type != null && length(v.type) > 0 }
}
output "database_migration_service_migration_jobs_vpc_peering_connectivity" {
  description = "Map of vpc_peering_connectivity values across all database_migration_service_migration_jobs, keyed the same as var.database_migration_service_migration_jobs except keys with no vpc_peering_connectivity are omitted"
  value       = { for k, v in google_database_migration_service_migration_job.database_migration_service_migration_jobs : k => one(v.vpc_peering_connectivity) if v.vpc_peering_connectivity != null && length(v.vpc_peering_connectivity) > 0 }
}

