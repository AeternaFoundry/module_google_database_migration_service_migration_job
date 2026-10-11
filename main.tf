resource "google_database_migration_service_migration_job" "database_migration_service_migration_jobs" {
  for_each = var.database_migration_service_migration_jobs

  destination      = each.value.destination
  migration_job_id = each.value.migration_job_id
  source           = each.value.source
  type             = each.value.type
  deletion_policy  = each.value.deletion_policy
  desired_state    = each.value.desired_state
  display_name     = each.value.display_name
  dump_path        = each.value.dump_path
  dump_type        = each.value.dump_type
  labels           = each.value.labels
  location         = each.value.location
  project          = each.value.project
  stop_on_warnings = each.value.stop_on_warnings

  dynamic "dump_flags" {
    for_each = each.value.dump_flags != null ? [each.value.dump_flags] : []
    content {
      dynamic "dump_flags" {
        for_each = dump_flags.value.dump_flags != null ? dump_flags.value.dump_flags : []
        content {
          name  = dump_flags.value.name
          value = dump_flags.value.value
        }
      }
    }
  }

  dynamic "objects_config" {
    for_each = each.value.objects_config != null ? [each.value.objects_config] : []
    content {
      dynamic "source_objects_config" {
        for_each = objects_config.value.source_objects_config != null ? [objects_config.value.source_objects_config] : []
        content {
          dynamic "object_configs" {
            for_each = source_objects_config.value.object_configs != null ? source_objects_config.value.object_configs : []
            content {
              dynamic "object_identifier" {
                for_each = object_configs.value.object_identifier != null ? [object_configs.value.object_identifier] : []
                content {
                  database = object_identifier.value.database
                  schema   = object_identifier.value.schema
                  table    = object_identifier.value.table
                  type     = object_identifier.value.type
                }
              }
            }
          }
          objects_selection_type = source_objects_config.value.objects_selection_type
        }
      }
    }
  }

  dynamic "performance_config" {
    for_each = each.value.performance_config != null ? [each.value.performance_config] : []
    content {
      dump_parallel_level = performance_config.value.dump_parallel_level
    }
  }

  dynamic "postgres_homogeneous_config" {
    for_each = each.value.postgres_homogeneous_config != null ? [each.value.postgres_homogeneous_config] : []
    content {
      is_native_logical            = postgres_homogeneous_config.value.is_native_logical
      max_additional_subscriptions = postgres_homogeneous_config.value.max_additional_subscriptions
    }
  }

  dynamic "reverse_ssh_connectivity" {
    for_each = each.value.reverse_ssh_connectivity != null ? [each.value.reverse_ssh_connectivity] : []
    content {
      vm      = reverse_ssh_connectivity.value.vm
      vm_ip   = reverse_ssh_connectivity.value.vm_ip
      vm_port = reverse_ssh_connectivity.value.vm_port
      vpc     = reverse_ssh_connectivity.value.vpc
    }
  }

  dynamic "static_ip_connectivity" {
    for_each = each.value.static_ip_connectivity != null ? [each.value.static_ip_connectivity] : []
    content {
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "vpc_peering_connectivity" {
    for_each = each.value.vpc_peering_connectivity != null ? [each.value.vpc_peering_connectivity] : []
    content {
      vpc = vpc_peering_connectivity.value.vpc
    }
  }
}

