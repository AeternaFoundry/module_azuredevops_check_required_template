resource "azuredevops_check_required_template" "check_required_templates" {
  for_each = var.check_required_templates

  project_id           = each.value.project_id
  target_resource_id   = each.value.target_resource_id
  target_resource_type = each.value.target_resource_type

  dynamic "required_template" {
    for_each = each.value.required_template
    content {
      repository_name = required_template.value.repository_name
      repository_ref  = required_template.value.repository_ref
      repository_type = required_template.value.repository_type
      template_path   = required_template.value.template_path
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

