#!/usr/bin/with-contenv bashio
set -euo pipefail

bitaxe_ip="$(bashio::config 'bitaxe_ip')"
voltage="$(bashio::config 'voltage')"
frequency="$(bashio::config 'frequency')"
sleep_time="$(bashio::config 'sleep_time')"
benchmark_time="$(bashio::config 'benchmark_time')"
sample_interval="$(bashio::config 'sample_interval')"

if [[ -z "${bitaxe_ip}" ]]; then
  bashio::log.fatal "bitaxe_ip is required."
  exit 1
fi

bashio::log.info "Starting Bitaxe Hashrate Benchmark for ${bitaxe_ip}."

export BITAXE_IP="${bitaxe_ip}"
export BITAXE_VOLTAGE="${voltage}"
export BITAXE_FREQUENCY="${frequency}"
export BITAXE_SLEEP_TIME="${sleep_time}"
export BITAXE_BENCHMARK_TIME="${benchmark_time}"
export BITAXE_SAMPLE_INTERVAL="${sample_interval}"

exec python3 /app/bitaxe_hashrate_benchmark.py \
  "${bitaxe_ip}" \
  --voltage "${voltage}" \
  --frequency "${frequency}" \
  --sleep-time "${sleep_time}" \
  --benchmark-time "${benchmark_time}" \
  --sample-interval "${sample_interval}"
