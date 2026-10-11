data "google_compute_network_peering" "compute_network_peering_lookup" {
  for_each = var.compute_network_peering_lookup

  name    = each.value.name
  network = each.value.network

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

