resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-data"
  acl           = "public-read"
  force_destroy = true
  tags = {
    Name                 = "${local.resource_prefix.value}-data"
    Environment          = local.resource_prefix.value
    yor_trace            = "0c23f4fd-6fd9-4ed1-925f-6c1b13388837"
    git_commit           = "8aefc18757655c5685aca4a12b2a1a179f620ee1"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2021-06-16 14:25:48"
    git_last_modified_by = "matt@bridgecrew.io"
    git_modifiers        = "matt"
    git_org              = "metahertz"
    git_repo             = "deployablegoat"
    yor_name             = "data"
  }
}

resource "aws_s3_bucket" "financials" {
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-financials"
  acl           = "private"
  force_destroy = true
  tags = {
    Name                 = "${local.resource_prefix.value}-financials"
    Environment          = local.resource_prefix.value
    yor_trace            = "b1450859-3ab4-43db-b287-c19034fe0fbb"
    git_commit           = "8aefc18757655c5685aca4a12b2a1a179f620ee1"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2021-06-16 14:25:48"
    git_last_modified_by = "matt@bridgecrew.io"
    git_modifiers        = "matt"
    git_org              = "metahertz"
    git_repo             = "deployablegoat"
    yor_name             = "financials"
  }
}

resource "aws_s3_bucket" "operations" {
  # bucket is not encrypted
  # bucket does not have access logs
  bucket = "${local.resource_prefix.value}-operations"
  acl    = "private"
  versioning {
    enabled = true
  }
  force_destroy = true
  tags = {
    Name                 = "${local.resource_prefix.value}-operations"
    Environment          = local.resource_prefix.value
    yor_trace            = "4534313c-6d0d-457d-b928-4c89689fb08a"
    git_commit           = "8aefc18757655c5685aca4a12b2a1a179f620ee1"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2021-06-16 14:25:48"
    git_last_modified_by = "matt@bridgecrew.io"
    git_modifiers        = "matt"
    git_org              = "metahertz"
    git_repo             = "deployablegoat"
    yor_name             = "operations"
  }

}