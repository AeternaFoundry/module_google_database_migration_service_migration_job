variable "database_migration_service_migration_jobs" {
  description = <<EOT
Map of database_migration_service_migration_jobs, attributes below
Required:
    - destination
    - migration_job_id
    - source
    - type
Optional:
    - deletion_policy
    - desired_state
    - display_name
    - dump_path
    - dump_type
    - labels
    - location
    - project
    - stop_on_warnings
    - dump_flags (block):
        - dump_flags (optional, block):
            - name (optional)
            - value (optional)
    - objects_config (block):
        - source_objects_config (optional, block):
            - object_configs (optional, block):
                - object_identifier (optional, block):
                    - database (optional)
                    - schema (optional)
                    - table (optional)
                    - type (required)
            - objects_selection_type (optional)
    - performance_config (block):
        - dump_parallel_level (optional)
    - postgres_homogeneous_config (block):
        - is_native_logical (required)
        - max_additional_subscriptions (optional)
    - reverse_ssh_connectivity (block):
        - vm (optional)
        - vm_ip (optional)
        - vm_port (optional)
        - vpc (optional)
    - static_ip_connectivity (block):
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - vpc_peering_connectivity (block):
        - vpc (optional)
EOT

  type = map(object({
    destination      = string
    migration_job_id = string
    source           = string
    type             = string
    deletion_policy  = optional(string)
    desired_state    = optional(string)
    display_name     = optional(string)
    dump_path        = optional(string)
    dump_type        = optional(string)
    labels           = optional(map(string))
    location         = optional(string)
    project          = optional(string)
    stop_on_warnings = optional(bool)
    dump_flags = optional(object({
      dump_flags = optional(list(object({
        name  = optional(string)
        value = optional(string)
      })))
    }))
    objects_config = optional(object({
      source_objects_config = optional(object({
        object_configs = optional(list(object({
          object_identifier = optional(object({
            database = optional(string)
            schema   = optional(string)
            table    = optional(string)
            type     = string
          }))
        })))
        objects_selection_type = optional(string)
      }))
    }))
    performance_config = optional(object({
      dump_parallel_level = optional(string)
    }))
    postgres_homogeneous_config = optional(object({
      is_native_logical            = bool
      max_additional_subscriptions = optional(number)
    }))
    reverse_ssh_connectivity = optional(object({
      vm      = optional(string)
      vm_ip   = optional(string)
      vm_port = optional(number)
      vpc     = optional(string)
    }))
    static_ip_connectivity = optional(object({
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    vpc_peering_connectivity = optional(object({
      vpc = optional(string)
    }))
  }))
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

