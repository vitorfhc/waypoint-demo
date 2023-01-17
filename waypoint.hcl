project = "waypoint-demo"
app "nginx" {
  build {
    use "docker-pull" {
      tag   = "latest"
      image = "nginx"
    }
  }
  deploy {}
  release {}
}
