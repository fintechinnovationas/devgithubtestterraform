resource "selectel_mks_nodegroup_v1" "nodegroup_1" {
  cluster_id        = var.cluster_id
  project_id        = var.project_id
  region            = var.region
  availability_zone = var.availability_zone
  nodes_count       = var.nodes_count
  keypair_name      = var.keypair_name
  affinity_policy   = var.affinity_policy
  cpus              = var.cpus
  ram_mb            = var.ram_mb
  volume_gb         = var.volume_gb
  local_volume      = true
  volume_type       = null
  labels            = var.labels
  dynamic "taints" {
    for_each = var.taints[*]
    content {
      key = taints.value["key"]
      value = taints.value["value"]
      effect = taints.value["effect"]
    }
  }
}
