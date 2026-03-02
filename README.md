# homebrew-tap

Homebrew formulae for ppiankov tools.

## Install

```bash
brew tap ppiankov/tap
brew install ppiankov/tap/<formula>
```

## Available Formulae

### Cloud Waste Auditors

| Formula | Description |
|---------|-------------|
| [awsspectre](https://github.com/ppiankov/awsspectre) | AWS resource waste auditor — finds idle, orphaned, and oversized resources |
| [azurespectre](https://github.com/ppiankov/azurespectre) | Azure resource waste auditor — finds idle, orphaned, and oversized resources |
| [gcpspectre](https://github.com/ppiankov/gcpspectre) | GCP resource waste auditor — finds idle, orphaned, and oversized resources |
| [s3spectre](https://github.com/ppiankov/s3spectre) | AWS S3 bucket usage auditor — detects drift between code and live infrastructure |
| [gcsspectre](https://github.com/ppiankov/gcsspectre) | GCP Cloud Storage auditor — finds unused, misconfigured, and wasteful GCS buckets |
| [ecrspectre](https://github.com/ppiankov/ecrspectre) | Container registry waste auditor — finds stale, untagged, and oversized images |
| [iamspectre](https://github.com/ppiankov/iamspectre) | Cross-cloud IAM auditor — finds unused, over-permissioned, and stale identities |
| [cispectre](https://github.com/ppiankov/cispectre) | GitHub Actions waste auditor — finds idle, redundant, and misconfigured workflows |
| [logspectre](https://github.com/ppiankov/logspectre) | Cloud logging waste auditor — finds idle, oversized, and misconfigured log groups |
| [dnsspectre](https://github.com/ppiankov/dnsspectre) | DNS waste and security auditor — finds dangling records, takeover risks, and misconfigurations |

### Database & Data Store Auditors

| Formula | Description |
|---------|-------------|
| [rdsspectre](https://github.com/ppiankov/rdsspectre) | Database instance waste auditor — finds idle, oversized, and misconfigured RDS/Cloud SQL instances |
| [redisspectre](https://github.com/ppiankov/redisspectre) | Redis waste and hygiene auditor |
| [mongospectre](https://github.com/ppiankov/mongospectre) | MongoDB collection and index auditor — detects drift between code and live clusters |
| [pgspectre](https://github.com/ppiankov/pgspectre) | PostgreSQL schema and usage auditor — detects drift between code and database |
| [clickspectre](https://github.com/ppiankov/clickspectre) | ClickHouse usage analyzer — identifies unused tables and cleanup recommendations |
| [kafkaspectre](https://github.com/ppiankov/kafkaspectre) | Kafka cluster auditor — identifies unused, orphaned, and misconfigured topics |
| [snowspectre](https://github.com/ppiankov/snowspectre) | Snowflake warehouse and query waste auditor |
| [elasticspectre](https://github.com/ppiankov/elasticspectre) | Elasticsearch and OpenSearch waste auditor |

### Kubernetes & Infrastructure

| Formula | Description |
|---------|-------------|
| [kubespectre](https://github.com/ppiankov/kubespectre) | Kubernetes security posture auditor |
| [kubenow](https://github.com/ppiankov/kubenow) | Kubernetes resource analysis and cost optimization |
| [infranow](https://github.com/ppiankov/infranow) | Real-time infrastructure triage for Kubernetes and Prometheus |
| [trustwatch](https://github.com/ppiankov/trustwatch) | Kubernetes trust surface monitoring — discovers expiring certificates |
| [logtap](https://github.com/ppiankov/logtap) | Ephemeral log mirror for load testing |

### Security & Safety

| Formula | Description |
|---------|-------------|
| [vaultspectre](https://github.com/ppiankov/vaultspectre) | Vault secret usage auditor — find missing, unused, and stale secrets |
| [pastewatch](https://github.com/ppiankov/pastewatch) | Sensitive data scanner — deterministic detection and obfuscation |
| [chainwatch](https://github.com/ppiankov/chainwatch) | Runtime control plane for AI agent safety |

### Developer Tools

| Formula | Description |
|---------|-------------|
| [runforge](https://github.com/ppiankov/runforge) | Dependency-aware parallel task runner for AI coding agents |
| [ancc](https://github.com/ppiankov/ancc) | Static validator for the Agent-Native CLI Convention |
| [entropia](https://github.com/ppiankov/entropia) | Evidence support and decay diagnostics for public claims |
| [noisepan](https://github.com/ppiankov/noisepan) | Signal extractor for noisy information streams |
