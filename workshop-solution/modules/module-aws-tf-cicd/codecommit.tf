# Instructions: Dynamically create AWS CodeCommit Repos

resource "aws_codecommit_repository" "codecommit" {
  for_each        = var.codecommit_repos == null ? {} : var.codecommit_repos
  repository_name = each.value.repository_name
  description     = each.value.description
  default_branch  = each.value.default_branch
  tags            = each.value.tags
}
