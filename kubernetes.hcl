k8s_cluster "dc1" {
  driver  = "k3s"

  nodes = 1

  network {
    name = "network.dc1"
  }
}

k8s_cluster "dc2" {
  driver  = "k3s"
  version = "v1.18.16"

  nodes = 1

  network {
    name = "network.dc2"
  }
}