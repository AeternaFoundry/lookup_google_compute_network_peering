variable "compute_network_peering_lookup" {
  description = <<EOT
Map of compute_network_peering_lookup, attributes below
Required:
    - name
    - network
Optional:
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    name    = string
    network = string
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
}

