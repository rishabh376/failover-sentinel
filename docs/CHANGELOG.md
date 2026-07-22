# Changelog

All notable changes. Conventional Commits.

## 0.1.0 - Initial

Failover Sentinel

- feat: initial sre service - Service Reliability Owners coordinate validate failover readiness for shared platform dependencies, so failover gaps are found before real outages.
- feat: prometheus metrics, health/ready probes
- feat: helm chart, k8s manifests, terraform with HPA
- security: trivy scan, non-root, readOnlyRootFilesystem
- docs: architecture, runbook, DR plan, interview pack
