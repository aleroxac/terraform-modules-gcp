# Backlog

https://claude.ai/chat/9a9e9c95-32d8-4e98-8709-89544f9979db


## ecosystem
- [ ] GCP Cloud Identity Free
- [ ] private terraform registry
- [ ] gardener/terraformer
- [ ] google/terraformer

- [ ] terraform-cloud
- [ ] terragrunt
- [ ] atlantis

- [ ] https://terraform-docs.io
- [ ] https://github.com/im2nguyen/rover
- [ ] graph
- [ ] infracost / terracost / terraform-cloud cost estimation

- [ ] checkov
- [ ] tflint

- [ ] tfsec
- [ ] opa-policies

- [ ] ephemeral environments exclusive for tests
    - create cloud providers temporary accounts
    - provide dummy resources(init,plan,apply,tests,destroy)
    - run an automatic cleanup
    - use custom resource name prefixes

- tests
    - tools
        - native tftests
        - terratest
        - testinfra
        - conftest
        - localstack / gcp-emulators / azure-azurite
    - checks
        - check if resource exists
        - check resource id
        - chack resource tags
        - check resource configurations
    - types
        - security-tests
        - compliance-tests
        - integration-tests
        - idempotence-tests
        - destroy-tests
