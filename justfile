set shell := ["bash", "-euo", "pipefail", "-c"]

# List the source and test commands.
default:
    @just --list

# Check the source contract, Python syntax, workflows and source secrets offline.
check:
    just --fmt --check
    python3 -B scripts/light_contract.py
    actionlint
    zizmor --offline --no-progress .github
    gitleaks git --no-banner --redact .

# Run the existing contract suite with its owned temporary slot environment.
test:
    python3 -B -m unittest discover -s tests -v

# Verify the source and real contract test suite.
verify: check test
