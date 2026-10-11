resource "cloudflare_stream_download" "stream_downloads" {
  for_each = var.stream_downloads

  account_id = each.value.account_id
  identifier = each.value.identifier
}

