variable "check_required_templates" {
  description = <<EOT
Map of check_required_templates, attributes below
Required:
    - project_id
    - target_resource_id
    - target_resource_type
    - required_template (block):
        - repository_name (required)
        - repository_ref (required)
        - repository_type (optional)
        - template_path (required)
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    project_id           = string
    target_resource_id   = string
    target_resource_type = string
    required_template = list(object({
      repository_name = string
      repository_ref  = string
      repository_type = optional(string)
      template_path   = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.check_required_templates : (
        length(v.required_template) >= 1
      )
    ])
    error_message = "Each required_template list must contain at least 1 items"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

