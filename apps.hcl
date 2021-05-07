# Apps using "classic upstreams".
k8s_config "apps-dc1" {
  cluster = "k8s_cluster.dc1"
  depends_on = ["helm.consul-dc1"]

  paths = ["./k8s_config/without-tproxy.yaml"]
  wait_until_ready = true
}

# Apps using transparant proxies.
k8s_config "apps-dc2" {
  cluster = "k8s_cluster.dc2"
  depends_on = ["helm.consul-dc2"]

  paths = ["./k8s_config/with-tproxy.yaml"]
  wait_until_ready = true
}