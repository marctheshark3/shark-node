# 🦈 Shark Node - Lightweight Ergo Node

A fast and lightweight Ergo node implementation using NiPoPoWs (Non-Interactive Proofs of Proof-of-Work) and Docker. This implementation allows for quick setup and synchronization compared to running a full node.

## 🚀 Features

- Quick synchronization using NiPoPoWs
- Cross-platform support (Linux, macOS, Windows)
- Docker-based deployment
- Minimal resource requirements
- Perfect for developers and users needing quick access to the Ergo network

## 🔧 Prerequisites

- Docker Engine 20.10.0 or later
- Docker Compose v2.0.0 or later
- 4GB RAM minimum (8GB recommended)
- 10GB free disk space

## 📦 Quick Start

1. Clone the repository:
   ```bash
   git clone https://github.com/marctheshark3/shark-node.git
   cd shark-node
   ```

2. Copy the environment file:
   ```bash
   cp .env.example .env
   ```

3. Start the node:
   ```bash
   docker compose up -d
   ```

4. Check the logs:
   ```bash
   docker compose logs -f
   ```

## ⚙️ Configuration

Edit the `.env` file to modify the following settings:

```env
NODE_PORT=9053
API_PORT=9052
NETWORK=mainnet
```

## 🔒 Security Considerations

- The API is disabled by default for security. Enable it only if needed.
- Use secure passwords if enabling the API
- Consider using a reverse proxy if exposing the API

## 📊 Monitoring

Check node status:
```bash
curl http://localhost:9052/info
```

## 🛠 Troubleshooting

1. **Node not syncing**
   - Check your internet connection
   - Ensure ports are properly forwarded
   - Verify system resources

2. **Container not starting**
   - Check Docker logs
   - Verify port availability
   - Ensure sufficient disk space

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## ⚠️ Disclaimer

This is a lightweight node implementation and may not be suitable for mining or running a full node. For those use cases, please consider running a full Ergo node.