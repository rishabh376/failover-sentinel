# Deployment - failover-sentinel

**Use case:** Service Reliability Owners coordinate validate failover readiness for shared platform dependencies, so failover gaps are found before real outages.

## Infra requirements
→ `terraform/INFRA_REQUIREMENTS.md` - CPU/RAM/storage/network/cost breakdown

## GitOps
Flux watches `main` and reconciles changes automatically.

## Rollback
```
./scripts/rollback.sh
kubectl rollout undo deploy/failover-sentinel -n failover-sentinel
```
Usually < 30 sec.

## Cost
Vercel - $0/mo

Reliability and safety go hand-in-hand: SLO guardrails, incident runbooks, and control-plane failure mode analysis.
