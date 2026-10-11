resource "oci_stack_monitoring_discovery_job" "stack_monitoring_discovery_jobs" {
  for_each = var.stack_monitoring_discovery_jobs

  compartment_id                                = each.value.compartment_id
  defined_tags                                  = each.value.defined_tags
  discovery_client                              = each.value.discovery_client
  discovery_type                                = each.value.discovery_type
  freeform_tags                                 = each.value.freeform_tags
  should_propagate_tags_to_discovered_resources = each.value.should_propagate_tags_to_discovered_resources

  discovery_details {
    agent_id = each.value.discovery_details.agent_id
    dynamic "credentials" {
      for_each = each.value.discovery_details.credentials != null ? [each.value.discovery_details.credentials] : []
      content {
        dynamic "items" {
          for_each = credentials.value.items
          content {
            credential_name = items.value.credential_name
            credential_type = items.value.credential_type
            properties {
              properties_map = items.value.properties.properties_map
            }
          }
        }
      }
    }
    license = each.value.discovery_details.license
    properties {
      properties_map = each.value.discovery_details.properties.properties_map
    }
    resource_name = each.value.discovery_details.resource_name
    resource_type = each.value.discovery_details.resource_type
    dynamic "tags" {
      for_each = each.value.discovery_details.tags != null ? [each.value.discovery_details.tags] : []
      content {
        properties_map = tags.value.properties_map
      }
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
}

