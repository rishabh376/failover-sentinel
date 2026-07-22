variable "namespace" { default = "failover-sentinel" }
variable "image" { default = "ghcr.io/example/failover-sentinel:latest" }
variable "replicas" { default = 2 }
variable "region" { default = "us-east-1" }
