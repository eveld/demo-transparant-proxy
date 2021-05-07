ingress "consul-http-dc1" {
  source {
    driver = "local"
    
    config {
      port = 18500
    }
  }
  
  destination {
    driver = "k8s"
    
    config {
      cluster = "k8s_cluster.dc1"
      address = "consul-dc1-consul-server.default.svc"
      port = 8500
    }
  }
}


ingress "consul-http-dc2" {
  source {
    driver = "local"
    
    config {
      port = 28500
    }
  }
  
  destination {
    driver = "k8s"
    
    config {
      cluster = "k8s_cluster.dc2"
      address = "consul-dc2-consul-server.default.svc"
      port = 8500
    }
  }
}

ingress "web-dc1" {
  source {
    driver = "local"
    
    config {
      port = 19090
    }
  }
  
  destination {
    driver = "k8s"
    
    config {
      cluster = "k8s_cluster.dc1"
      address = "web.default.svc"
      port = 9090
    }
  }
}

ingress "web-dc2" {
  source {
    driver = "local"
    
    config {
      port = 29090
    }
  }
  
  destination {
    driver = "k8s"
    
    config {
      cluster = "k8s_cluster.dc2"
      address = "web.default.svc"
      port = 9090
    }
  }
}