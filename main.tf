module "repository" {
  for_each = local.repos

  source  = "ALT-F4-LLC/repository/github"
  version = "0.12.1"

  description        = each.value.description
  gitignore_template = each.value.gitignore_template
  name               = each.key
  owner              = var.owner
  topics             = each.value.topics
  visibility         = each.value.visibility
}