variable "stack_monitoring_discovery_jobs" {
  description = <<EOT
Map of stack_monitoring_discovery_jobs, attributes below
Required:
    - compartment_id
    - discovery_details (block):
        - agent_id (required)
        - credentials (optional, block):
            - items (required, block):
                - credential_name (required)
                - credential_type (required)
                - properties (required, block):
                    - properties_map (optional)
        - license (optional)
        - properties (required, block):
            - properties_map (optional)
        - resource_name (required)
        - resource_type (required)
        - tags (optional, block):
            - properties_map (optional)
Optional:
    - defined_tags
    - discovery_client
    - discovery_type
    - freeform_tags
    - should_propagate_tags_to_discovered_resources
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                                = string
    defined_tags                                  = optional(map(string))
    discovery_client                              = optional(string)
    discovery_type                                = optional(string)
    freeform_tags                                 = optional(map(string))
    should_propagate_tags_to_discovered_resources = optional(bool)
    discovery_details = object({
      agent_id = string
      credentials = optional(object({
        items = list(object({
          credential_name = string
          credential_type = string
          properties = object({
            properties_map = optional(map(string))
          })
        }))
      }))
      license = optional(string)
      properties = object({
        properties_map = optional(map(string))
      })
      resource_name = string
      resource_type = string
      tags = optional(object({
        properties_map = optional(map(string))
      }))
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.stack_monitoring_discovery_jobs : (
        v.discovery_details.credentials == null || (length(v.discovery_details.credentials.items) >= 1)
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
}

