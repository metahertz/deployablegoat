resource "aws_s3_bucket" "data" {
  bucket        = "${local.resource_prefix.value}-data"
  force_destroy = true
  tags = {
    Name                 = "${local.resource_prefix.value}-data"
    Environment          = local.resource_prefix.value
    yor_trace            = "0c23f4fd-6fd9-4ed1-925f-6c1b13388837"
    git_commit           = "2231b73198b848a2d4475fe6dbfab852a27f1005"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2024-11-14 22:05:38"
    git_last_modified_by = "matt+github@metahertz.co.uk"
    git_modifiers        = "matt/matt+github"
    git_org              = "metahertz"
    git_repo             = "deployablegoat"
    yor_name             = "data"
  }
}

resource "aws_s3_bucket" "financials" {
  bucket        = "${local.resource_prefix.value}-financials"
  force_destroy = true
  tags = {
    Name                 = "${local.resource_prefix.value}-financials"
    Environment          = local.resource_prefix.value
    yor_trace            = "b1450859-3ab4-43db-b287-c19034fe0fbb"
    git_commit           = "2231b73198b848a2d4475fe6dbfab852a27f1005"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2024-11-14 22:05:38"
    git_last_modified_by = "matt+github@metahertz.co.uk"
    git_modifiers        = "matt/matt+github"
    git_org              = "metahertz"
    git_repo             = "deployablegoat"
    yor_name             = "financials"
  }
}

resource "aws_s3_bucket" "operations" {
  bucket = "${local.resource_prefix.value}-operations"
  versioning {
    enabled = true
  }
  force_destroy = true
  tags = {
    Name                 = "${local.resource_prefix.value}-operations"
    Environment          = local.resource_prefix.value
    yor_trace            = "4534313c-6d0d-457d-b928-4c89689fb08a"
    git_commit           = "2231b73198b848a2d4475fe6dbfab852a27f1005"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2024-11-14 22:05:38"
    git_last_modified_by = "matt+github@metahertz.co.uk"
    git_modifiers        = "matt/matt+github"
    git_org              = "metahertz"
    git_repo             = "deployablegoat"
    yor_name             = "operations"
  }

}
