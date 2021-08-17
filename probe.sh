#!/bin/bash

set -e

curl http://localhost:4040/api/tunnels | jq -e .tunnels[0].config.inspect
