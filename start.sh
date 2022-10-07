#!/bin/bash
export hexkey=$(xauth list|grep `uname -n` | grep -hoP '\w*$')
docker compose up -d
