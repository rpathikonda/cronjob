#!/bin/sh
kubectl -n services get jobs | awk '$4 ~ /^[2-9]+d/ {print $1}' | xargs kubectl -n services delete jobs
kubectl -n dev  get jobs | awk '$4 ~ /^[2-9]+d/ {print $1}' | xargs kubectl -n dev delete jobs
kubectl -n cdo get jobs | awk '$4 ~ /^[2-9]+d/ {print $1}' | xargs kubectl -n cdo delete jobs
kubectl -n qa get jobs | awk '$4 ~ /^[2-9]+d/ {print $1}' | xargs kubectl -n qa delete jobs
kubectl -n conviva-qa get jobs | awk '$4 ~ /^[2-9]+d/ {print $1}' | xargs kubectl -n conviva-qa delete jobs
kubectl -n perf get jobs | awk '$4 ~ /^[2-9]+d/ {print $1}' | xargs kubectl -n perf delete jobs
