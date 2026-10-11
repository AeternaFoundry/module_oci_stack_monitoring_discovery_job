output "stack_monitoring_discovery_jobs_id" {
  description = "Map of id values across all stack_monitoring_discovery_jobs, keyed the same as var.stack_monitoring_discovery_jobs except keys with no id are omitted"
  value       = { for k, v in oci_stack_monitoring_discovery_job.stack_monitoring_discovery_jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stack_monitoring_discovery_jobs_compartment_id" {
  description = "Map of compartment_id values across all stack_monitoring_discovery_jobs, keyed the same as var.stack_monitoring_discovery_jobs except keys with no compartment_id are omitted"
  value       = { for k, v in oci_stack_monitoring_discovery_job.stack_monitoring_discovery_jobs : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "stack_monitoring_discovery_jobs_defined_tags" {
  description = "Map of defined_tags values across all stack_monitoring_discovery_jobs, keyed the same as var.stack_monitoring_discovery_jobs except keys with no defined_tags are omitted"
  value       = { for k, v in oci_stack_monitoring_discovery_job.stack_monitoring_discovery_jobs : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "stack_monitoring_discovery_jobs_discovery_client" {
  description = "Map of discovery_client values across all stack_monitoring_discovery_jobs, keyed the same as var.stack_monitoring_discovery_jobs except keys with no discovery_client are omitted"
  value       = { for k, v in oci_stack_monitoring_discovery_job.stack_monitoring_discovery_jobs : k => v.discovery_client if v.discovery_client != null && length(v.discovery_client) > 0 }
}
output "stack_monitoring_discovery_jobs_discovery_details" {
  description = "Map of discovery_details values across all stack_monitoring_discovery_jobs, keyed the same as var.stack_monitoring_discovery_jobs except keys with no discovery_details are omitted"
  value       = { for k, v in oci_stack_monitoring_discovery_job.stack_monitoring_discovery_jobs : k => one(v.discovery_details) if v.discovery_details != null && length(v.discovery_details) > 0 }
}
output "stack_monitoring_discovery_jobs_discovery_type" {
  description = "Map of discovery_type values across all stack_monitoring_discovery_jobs, keyed the same as var.stack_monitoring_discovery_jobs except keys with no discovery_type are omitted"
  value       = { for k, v in oci_stack_monitoring_discovery_job.stack_monitoring_discovery_jobs : k => v.discovery_type if v.discovery_type != null && length(v.discovery_type) > 0 }
}
output "stack_monitoring_discovery_jobs_freeform_tags" {
  description = "Map of freeform_tags values across all stack_monitoring_discovery_jobs, keyed the same as var.stack_monitoring_discovery_jobs except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_stack_monitoring_discovery_job.stack_monitoring_discovery_jobs : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "stack_monitoring_discovery_jobs_should_propagate_tags_to_discovered_resources" {
  description = "Map of should_propagate_tags_to_discovered_resources values across all stack_monitoring_discovery_jobs, keyed the same as var.stack_monitoring_discovery_jobs except keys with no should_propagate_tags_to_discovered_resources are omitted"
  value       = { for k, v in oci_stack_monitoring_discovery_job.stack_monitoring_discovery_jobs : k => v.should_propagate_tags_to_discovered_resources if v.should_propagate_tags_to_discovered_resources != null }
}
output "stack_monitoring_discovery_jobs_state" {
  description = "Map of state values across all stack_monitoring_discovery_jobs, keyed the same as var.stack_monitoring_discovery_jobs except keys with no state are omitted"
  value       = { for k, v in oci_stack_monitoring_discovery_job.stack_monitoring_discovery_jobs : k => v.state if v.state != null && length(v.state) > 0 }
}
output "stack_monitoring_discovery_jobs_status" {
  description = "Map of status values across all stack_monitoring_discovery_jobs, keyed the same as var.stack_monitoring_discovery_jobs except keys with no status are omitted"
  value       = { for k, v in oci_stack_monitoring_discovery_job.stack_monitoring_discovery_jobs : k => v.status if v.status != null && length(v.status) > 0 }
}
output "stack_monitoring_discovery_jobs_status_message" {
  description = "Map of status_message values across all stack_monitoring_discovery_jobs, keyed the same as var.stack_monitoring_discovery_jobs except keys with no status_message are omitted"
  value       = { for k, v in oci_stack_monitoring_discovery_job.stack_monitoring_discovery_jobs : k => v.status_message if v.status_message != null && length(v.status_message) > 0 }
}
output "stack_monitoring_discovery_jobs_system_tags" {
  description = "Map of system_tags values across all stack_monitoring_discovery_jobs, keyed the same as var.stack_monitoring_discovery_jobs except keys with no system_tags are omitted"
  value       = { for k, v in oci_stack_monitoring_discovery_job.stack_monitoring_discovery_jobs : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "stack_monitoring_discovery_jobs_tenant_id" {
  description = "Map of tenant_id values across all stack_monitoring_discovery_jobs, keyed the same as var.stack_monitoring_discovery_jobs except keys with no tenant_id are omitted"
  value       = { for k, v in oci_stack_monitoring_discovery_job.stack_monitoring_discovery_jobs : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
}
output "stack_monitoring_discovery_jobs_time_updated" {
  description = "Map of time_updated values across all stack_monitoring_discovery_jobs, keyed the same as var.stack_monitoring_discovery_jobs except keys with no time_updated are omitted"
  value       = { for k, v in oci_stack_monitoring_discovery_job.stack_monitoring_discovery_jobs : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "stack_monitoring_discovery_jobs_user_id" {
  description = "Map of user_id values across all stack_monitoring_discovery_jobs, keyed the same as var.stack_monitoring_discovery_jobs except keys with no user_id are omitted"
  value       = { for k, v in oci_stack_monitoring_discovery_job.stack_monitoring_discovery_jobs : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

