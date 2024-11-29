# Monitoring Setup for Shark Node

This directory contains the monitoring configuration for the Ergo node using Prometheus and Grafana.

## Features

- Real-time transaction monitoring
- Memory and CPU usage tracking
- Node health metrics
- Custom Grafana dashboards

## Quick Start

1. Start the monitoring stack:
```bash
docker-compose -f docker-compose.monitoring.yml up -d
```

2. Access Grafana:
- URL: http://localhost:3000
- Default credentials:
  - Username: admin
  - Password: ergoadmin

## Dashboard Details

### Main Dashboard
- Transaction metrics
  - Incoming transactions
  - Outgoing transactions
  - Transaction confirmation times
- Node Performance
  - Memory usage
  - CPU usage
  - Network connections
- Wallet Status
  - Balance tracking
  - Address monitoring

## Custom Metrics

The following metrics are tracked:
- Transaction count per minute
- Memory usage percentage
- Connected peers
- Block height and sync status
- Wallet transaction history

## Alerts

Default alerts are set for:
- High memory usage (>80%)
- Node disconnection
- Unusual transaction patterns
- Sync issues

## Customization

To add custom metrics:
1. Update prometheus.yml
2. Import new dashboard JSON to Grafana
3. Restart the monitoring stack