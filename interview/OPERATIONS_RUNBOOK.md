# Operations Runbook - failover-sentinel

Service Reliability Owners coordinate validate failover readiness for shared platform dependencies, so failover gaps are found before real outages.

**On-call? Read this first.**

## Deploy
```
kubectl apply -k k8s/ -n failover-sentinel
kubectl rollout status deploy/failover-sentinel -n failover-sentinel
```

## Rollback (when things go red)
```
./scripts/rollback.sh
# usually < 30sec
```

## Scale up NOW
```
kubectl scale deploy/failover-sentinel --replicas=10 -n failover-sentinel
```

## Logs
```
kubectl logs -l app=failover-sentinel -n failover-sentinel -f --tail=200
```

## Crashloop?
```
kubectl describe pod -l app=failover-sentinel -n failover-sentinel
kubectl logs <pod> --previous -n failover-sentinel
```
90% of the time: missing env var in ConfigMap.

## Metrics
`curl localhost:8080/metrics` or Grafana dashboard in `monitoring/`

## DR / Failover
See `docs/DISASTER_RECOVERY.md` - RTO 15m

We actually tested this. 11 min.
