# Tax CI Pipeline

This repo holds the Concourse CI pipeline for the tax company.

## Deploying the Pipelines

Core

```
fly -t lite set-pipeline -p tax-core -c pipeline.yml -l ../path/to/credentials.yml --var "private_key=$(cat ~/.ssh/id_rsa)"
```

Integrator

```
fly -t lite set-pipeline -p tax-integrator -c pipeline.yml -l ../path/to/credentials.yml --var "private_key=$(cat ~/.ssh/id_rsa)"
```
