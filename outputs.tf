output "check_required_templates_id" {
  description = "Map of id values across all check_required_templates, keyed the same as var.check_required_templates except keys with no id are omitted"
  value       = { for k, v in azuredevops_check_required_template.check_required_templates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "check_required_templates_project_id" {
  description = "Map of project_id values across all check_required_templates, keyed the same as var.check_required_templates except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_check_required_template.check_required_templates : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "check_required_templates_required_template" {
  description = "Map of required_template values across all check_required_templates, keyed the same as var.check_required_templates except keys with no required_template are omitted"
  value       = { for k, v in azuredevops_check_required_template.check_required_templates : k => v.required_template if v.required_template != null && length(v.required_template) > 0 }
}
output "check_required_templates_target_resource_id" {
  description = "Map of target_resource_id values across all check_required_templates, keyed the same as var.check_required_templates except keys with no target_resource_id are omitted"
  value       = { for k, v in azuredevops_check_required_template.check_required_templates : k => v.target_resource_id if v.target_resource_id != null && length(v.target_resource_id) > 0 }
}
output "check_required_templates_target_resource_type" {
  description = "Map of target_resource_type values across all check_required_templates, keyed the same as var.check_required_templates except keys with no target_resource_type are omitted"
  value       = { for k, v in azuredevops_check_required_template.check_required_templates : k => v.target_resource_type if v.target_resource_type != null && length(v.target_resource_type) > 0 }
}
output "check_required_templates_version" {
  description = "Map of version values across all check_required_templates, keyed the same as var.check_required_templates except keys with no version are omitted"
  value       = { for k, v in azuredevops_check_required_template.check_required_templates : k => v.version if v.version != null }
}

