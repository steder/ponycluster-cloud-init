#!/usr/bin/env bash

set -e -u -x

mkdir -p /etc/modules-load.d/
cat <<EOF | tee /etc/modules-load.d/k8s.conf
br_netfilter
EOF

mkdir -p /etc/sysctl.d/
cat <<EOF | tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF
sysctl --system