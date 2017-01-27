# Tax CI Pipeline

This repo holds the Concourse CI pipeline for the tax company.

## Deploying the Pipeline

```
fly -t lite set-pipeline -p tax-ci -c pipeline.yml -l ../path/to/credentials.yml --var "private_key=$(cat ~/.ssh/id_rsa)"
```
