variable "connect_user_hierarchy_structures" {
  description = <<EOT
Map of connect_user_hierarchy_structures, attributes below
Required:
    - instance_id
    - hierarchy_structure (block):
        - level_five (optional, block):
            - name (required)
        - level_four (optional, block):
            - name (required)
        - level_one (optional, block):
            - name (required)
        - level_three (optional, block):
            - name (required)
        - level_two (optional, block):
            - name (required)
Optional:
    - region
EOT

  type = map(object({
    instance_id = string
    region      = optional(string)
    hierarchy_structure = object({
      level_five = optional(object({
        name = string
      }))
      level_four = optional(object({
        name = string
      }))
      level_one = optional(object({
        name = string
      }))
      level_three = optional(object({
        name = string
      }))
      level_two = optional(object({
        name = string
      }))
    })
  }))
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

