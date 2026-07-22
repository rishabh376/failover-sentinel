# failover-sentinel

> Service Reliability Owners coordinate validate failover readiness for shared platform dependencies, so failover gaps are found before real outages.

**Domain:** sre | **Complexity:** intermediate | **Stack:** Go, Prometheus, Grafana, Chaos Mesh, Argo Rollouts, OTel

| | |
|---|---|
| Use case | Service Reliability Owners coordinate validate failover readiness for shared platform dependencies, so failover gaps are found before real outages. |
| Pain point | Teams discover runbooks are stale during the incident, not before it. |
| Success metric | Warn 30 minutes before projected budget exhaustion and auto-freeze risky deploys. |
| Cost | $0/mo on Vercel |

## Why this exists

Teams discover runbooks are stale during the incident, not before it.. Service Reliability Owners coordinate validate failover readiness for shared platform dependencies, so failover gaps are found before real outages.

> This production platform is designed for reliability, error budgets, and repeatable recovery drills. For this implementation, the service is designed to remove the operational friction behind Service Reliability Owners coordinate validate failover readiness for shared platform dependencies, so failover gaps are found before real outages..

## What this product does

This project ships a production-oriented service that exposes health, readiness, observability, and domain-specific endpoints for Service Reliability Owners coordinate validate failover readiness for shared platform dependencies, so failover gaps are found before real outages.. The implementation is intended to be deployed behind Kubernetes with secure defaults, CI validation, and rollback-ready manifests.

## Quick start

```bash
docker build -t failover-sentinel:local .
docker run -p 8080:8080 failover-sentinel:local
curl http://localhost:8080/healthz
```

## Architecture

```
GitHub CI -> Container Registry -> Kubernetes -> Go -> Operators / SRE
```

See `docs/ARCHITECTURE.md`

## Infrastructure

Full spec: `terraform/INFRA_REQUIREMENTS.md`

TL;DR: K8s cluster, 2-10 pods HPA, $0 on Vercel

## Docs

- `docs/ARCHITECTURE.md` - components, tradeoffs
- `docs/DESIGN_DISCUSSION.md` - how we decided to build this
- `docs/DEPLOYMENT.md` - GitOps, rollback
- `docs/SECURITY.md` - threat model
- `docs/TROUBLESHOOTING.md` - 3am runbook
- `terraform/INFRA_REQUIREMENTS.md` - **infra: CPU/RAM/storage/cost**

Interview prep: `interview/`
