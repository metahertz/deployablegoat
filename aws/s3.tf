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
    git_commit           = "8aefc18757655c5685aca4a12b2a1a179f620ee1"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2021-06-16 14:25:48"
    git_last_modified_by = "matt@bridgecrew.io"
    git_modifiers        = "matt"
    git_org              = "metahertz"
    git_repo             = "deployablegoat"
    yor_trace            = "893b9f39-9e36-4c16-b859-d27a2931f082"
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
    git_commit           = "8aefc18757655c5685aca4a12b2a1a179f620ee1"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2021-06-16 14:25:48"
    git_last_modified_by = "matt@bridgecrew.io"
    git_modifiers        = "matt"
    git_org              = "metahertz"
    git_repo             = "deployablegoat"
    yor_trace            = "7a4014cb-5699-4f43-8168-2c4d7268a11c"
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
    git_commit           = "8aefc18757655c5685aca4a12b2a1a179f620ee1"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2021-06-16 14:25:48"
    git_last_modified_by = "matt@bridgecrew.io"
    git_modifiers        = "matt"
    git_org              = "metahertz"
    git_repo             = "deployablegoat"
    yor_trace            = "fe3457b4-d89b-40aa-9cae-b30419e43c07"
  }

}
