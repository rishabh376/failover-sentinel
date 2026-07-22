# Setup - failover-sentinel

Service Reliability Owners coordinate validate failover readiness for shared platform dependencies, so failover gaps are found before real outages.

1. **Infra first**: `cd terraform && terraform init && terraform apply`
2. `kubectl apply -k k8s/ -n failover-sentinel`
3. `kubectl port-forward svc/failover-sentinel 8080:80 -n failover-sentinel`
4. `curl localhost:8080/healthz`

Env vars: `PORT=8080`, `LOG_LEVEL=info`

We treat observability as a first-class citizen with alerts tuned to what actually matters in an outage.
