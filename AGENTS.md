# Agent instructions

This is a public product repository. Never add real tenant, repository, host,
network, credential, or runtime-evidence data. Use synthetic `example-*`
identities.

Public workflows must use standard GitHub-hosted runners and must never route
fork code to private capacity.

The product is the official `actions/runner` install contract. Do not add a
scheduler, GARM, Incus, or a custom job queue.

Use `just check` for offline source feedback and `just test` on an admitted
executor. `just verify` runs both. Source verification never installs or
registers a runner, starts a service, or cleans a host.
