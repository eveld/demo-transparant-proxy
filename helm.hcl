# Consul without transparant proxy.
helm "consul-dc1" {
  cluster = "k8s_cluster.dc1"
  chart = "github.com/hashicorp/consul-helm"
  values = "./helm/without-tproxy.yaml"
  
  health_check {
    timeout = "240s"
    pods = ["release=consul-dc1"]
  }
}

# Consul with transparant proxy.
helm "consul-dc2" {
  cluster = "k8s_cluster.dc2"
  chart = "github.com/hashicorp/consul-helm"
  values = "./helm/with-tproxy.yaml"
  
  health_check {
    timeout = "240s"
    pods = ["release=consul-dc2"]
  }
}