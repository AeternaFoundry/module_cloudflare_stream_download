output "stream_downloads_account_id" {
  description = "Map of account_id values across all stream_downloads, keyed the same as var.stream_downloads except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_stream_download.stream_downloads : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "stream_downloads_audio" {
  description = "Map of audio values across all stream_downloads, keyed the same as var.stream_downloads except keys with no audio are omitted"
  value       = { for k, v in cloudflare_stream_download.stream_downloads : k => v.audio if v.audio != null && length(v.audio) > 0 }
}
output "stream_downloads_default" {
  description = "Map of default values across all stream_downloads, keyed the same as var.stream_downloads except keys with no default are omitted"
  value       = { for k, v in cloudflare_stream_download.stream_downloads : k => v.default if v.default != null && length(v.default) > 0 }
}
output "stream_downloads_identifier" {
  description = "Map of identifier values across all stream_downloads, keyed the same as var.stream_downloads except keys with no identifier are omitted"
  value       = { for k, v in cloudflare_stream_download.stream_downloads : k => v.identifier if v.identifier != null && length(v.identifier) > 0 }
}

