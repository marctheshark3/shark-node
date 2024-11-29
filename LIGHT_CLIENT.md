# Ergo Light Client Information

## Overview
This implementation uses NiPoPoWs (Non-Interactive Proofs of Proof-of-Work) to provide a lightweight alternative to running a full Ergo node. The light client enables quick synchronization and basic node functionality while requiring minimal resources.

## Features
- Fast synchronization using NiPoPoW protocol
- UTXO set bootstrap for quick state verification
- Minimal disk space requirements
- Lower memory footprint than full nodes

## Technical Details

### NiPoPoW Configuration
- `nipopowBootstrap`: Enables fast bootstrap using NiPoPoW protocol
- `p2pNipopows`: Number of parallel NiPoPoW verifications (default: 2)

### UTXO Bootstrap
- `utxoBootstrap`: Enables UTXO set bootstrapping
- `storingUtxoSnapshots`: Disabled to minimize storage requirements

## Resource Requirements
- Disk Space: ~2GB
- RAM: 2GB minimum (configured in docker-compose)
- CPU: 2 cores recommended

## Limitations
1. Cannot participate in mining
2. Limited historical block access
3. Relies on full nodes for some operations
4. May have slightly delayed transaction verification

## Expected Performance
- Initial Sync Time: 5-15 minutes
- Transaction Verification: Near real-time
- Network Bootstrap: 1-2 minutes

## Security Considerations
- Verify API key hash configuration
- Monitor trusted peers
- Regular updates recommended
- Backup configuration if customized

## Monitoring
Key metrics to monitor:
1. NiPoPoW validation status
2. UTXO bootstrap progress
3. Connected peers count
4. Memory usage
5. Network bandwidth

## Troubleshooting
1. Sync Issues:
   - Check network connectivity
   - Verify peer connections
   - Ensure sufficient resources

2. Performance Problems:
   - Monitor memory usage
   - Check disk space
   - Verify Java heap size

3. API Access Issues:
   - Confirm API key hash
   - Check port accessibility
   - Verify network settings