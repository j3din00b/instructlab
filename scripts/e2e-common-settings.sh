#!/usr/bin/env bash

# Enable general torch debugging
export TORCH_CPP_LOG_LEVEL=INFO
export TORCH_DISTRIBUTED_DEBUG=INFO

# NCCL backend
export NCCL_DEBUG=INFO
export NCCL_DEBUG_SUBSYS=INIT,BOOTSTRAP,ENV

# We don't run on nvlink-enabled ec2 runners
export NCCL_IGNORE_DISABLED_P2P=1

# Dump debug info, including full stack traces, on watchdog timeout and collective unsync
export TORCH_NCCL_DUMP_ON_TIMEOUT=1
export TORCH_SHOW_CPP_STACKTRACES=1
