#!/bin/bash

set -ex

pip install kubernetes

ansible-galaxy collection install kubernetes.core

ansible-runner run /runner --playbook /runner/playbooks/nova-flavor-sync.yaml
