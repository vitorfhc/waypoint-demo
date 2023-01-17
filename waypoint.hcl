project = "waypoint-demo"
app "nginx" {
  build {
    use "docker-pull" {
      image = "nginx"
      tag = "latest"
      disable_entrypoint = true
    }
  }
  deploy {
    // use "aws-ecs" {
    //   service_port = 80
    //   subnets = [
    //     "subnet-04932836f174657d4",
    //     "subnet-0aba49262d126aab0",
    //     "subnet-00e51167023575c41"
    //   ]
    //   memory = 512
    //   cpu = 512
    //   region = "eu-central-1"
    //   logging {
    //     create_group = true
    //     region = "eu-central-1"
    //   }
    //   alb {
    //     domain_name = "nginx.dev.promptly.intranet"
    //   }
    //   assign_public_ip = false
    // }
    use "docker" {
      local = true
    }
  }
  release {}
}
