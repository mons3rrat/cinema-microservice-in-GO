kind     = "service-resolver"
name     = "notification-api"

subsets = {
  v1 = {
    filter = "Service.Meta.version == 1"
  }
  v2 = {
    filter = "Service.Meta.version == 2"
  }
}

failover = {
  "*" = {
    datacenters = ["dc2"]
  }
}
