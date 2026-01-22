# Bitaxe Hashrate Benchmark (Home Assistant Add-on)

Run the Bitaxe hashrate benchmark from Home Assistant using configuration-driven settings.

## Configuration

| Option | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| `bitaxe_ip` | string | yes | `""` | IP address of the Bitaxe miner (e.g., `192.168.2.26`). |
| `voltage` | integer | no | `1150` | Initial core voltage in mV. |
| `frequency` | integer | no | `500` | Initial frequency in MHz. |
| `sleep_time` | integer | no | `90` | Seconds to wait before starting the benchmark. |
| `benchmark_time` | integer | no | `600` | Benchmark duration in seconds. |
| `sample_interval` | integer | no | `15` | Sampling interval in seconds. |

> **Note:** Ensure `benchmark_time / sample_interval` yields at least 7 samples, or the benchmark will exit with a validation error.

## Usage

1. Install the add-on from your local add-ons repository.
2. Configure the options in the add-on configuration tab.
3. Start the add-on to launch the benchmark.

The add-on runs the same Python script included in this repository and passes the configuration values as command-line arguments.
