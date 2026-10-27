output "check_required_templates_id" {
  description = "Map of id values across all check_required_templates, keyed the same as var.check_required_templates"
  value       = { for k, v in azuredevops_check_required_template.check_required_templates : k => v.id }
}
output "check_required_templates_project_id" {
  description = "Map of project_id values across all check_required_templates, keyed the same as var.check_required_templates"
  value       = { for k, v in azuredevops_check_required_template.check_required_templates : k => v.project_id }
}
output "check_required_templates_required_template" {
  description = "Map of required_template values across all check_required_templates, keyed the same as var.check_required_templates"
  value       = { for k, v in azuredevops_check_required_template.check_required_templates : k => v.required_template }
}
output "check_required_templates_target_resource_id" {
  description = "Map of target_resource_id values across all check_required_templates, keyed the same as var.check_required_templates"
  value       = { for k, v in azuredevops_check_required_template.check_required_templates : k => v.target_resource_id }
}
output "check_required_templates_target_resource_type" {
  description = "Map of target_resource_type values across all check_required_templates, keyed the same as var.check_required_templates"
  value       = { for k, v in azuredevops_check_required_template.check_required_templates : k => v.target_resource_type }
}
output "check_required_templates_version" {
  description = "Map of version values across all check_required_templates, keyed the same as var.check_required_templates"
  value       = { for k, v in azuredevops_check_required_template.check_required_templates : k => v.version }
}

