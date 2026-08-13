resource "aws_connect_user_hierarchy_structure" "connect_user_hierarchy_structures" {
  for_each = var.connect_user_hierarchy_structures

  instance_id = each.value.instance_id
  region      = each.value.region

  hierarchy_structure {
    dynamic "level_five" {
      for_each = each.value.hierarchy_structure.level_five != null ? [each.value.hierarchy_structure.level_five] : []
      content {
        name = level_five.value.name
      }
    }
    dynamic "level_four" {
      for_each = each.value.hierarchy_structure.level_four != null ? [each.value.hierarchy_structure.level_four] : []
      content {
        name = level_four.value.name
      }
    }
    dynamic "level_one" {
      for_each = each.value.hierarchy_structure.level_one != null ? [each.value.hierarchy_structure.level_one] : []
      content {
        name = level_one.value.name
      }
    }
    dynamic "level_three" {
      for_each = each.value.hierarchy_structure.level_three != null ? [each.value.hierarchy_structure.level_three] : []
      content {
        name = level_three.value.name
      }
    }
    dynamic "level_two" {
      for_each = each.value.hierarchy_structure.level_two != null ? [each.value.hierarchy_structure.level_two] : []
      content {
        name = level_two.value.name
      }
    }
  }
}

