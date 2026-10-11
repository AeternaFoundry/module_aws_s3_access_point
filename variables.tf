variable "s3_access_points" {
  description = <<EOT
Map of s3_access_points, attributes below
Required:
    - bucket
    - name
Optional:
    - account_id
    - bucket_account_id
    - policy
    - region
    - tags
    - tags_all
    - public_access_block_configuration (block):
        - block_public_acls (optional)
        - block_public_policy (optional)
        - ignore_public_acls (optional)
        - restrict_public_buckets (optional)
    - vpc_configuration (block):
        - vpc_id (required)
EOT

  type = map(object({
    bucket            = string
    name              = string
    account_id        = optional(string)
    bucket_account_id = optional(string)
    policy            = optional(string)
    region            = optional(string)
    tags              = optional(map(string))
    tags_all          = optional(map(string))
    public_access_block_configuration = optional(object({
      block_public_acls       = optional(bool)
      block_public_policy     = optional(bool)
      ignore_public_acls      = optional(bool)
      restrict_public_buckets = optional(bool)
    }))
    vpc_configuration = optional(object({
      vpc_id = string
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

