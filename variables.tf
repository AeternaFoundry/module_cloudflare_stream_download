variable "stream_downloads" {
  description = <<EOT
Map of stream_downloads, attributes below
Required:
    - account_id
    - identifier
EOT

  type = map(object({
    account_id = string
    identifier = string
  }))
}

