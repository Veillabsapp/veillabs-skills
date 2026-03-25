# Veillabs OpenClaw Skill

[![OpenClaw Compatible](https://img.shields.io/badge/OpenClaw-Compatible-blue.svg)](https://openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

An official OpenClaw plugin and skill for interacting with the **Veillabs** privacy-focused DEX API. This skill enables AI agents to seamlessly perform cross-chain token swaps, initiate private seed distributions, and track real-time transaction statuses directly through OpenClaw.

## Features

- 🔄 **Private Swaps**: One-to-one cross-chain token swaps with privacy.
- 💸 **Private Seed Distribution**: Multi-destination token distribution (split funds to multiple wallets securely).
- 📡 **Real-Time Tracking**: Polling and monitoring of transaction lifecycle statuses.
- 📊 **Platform Stats**: Fetch real-time market volume data.

## Installation

You can install this plugin into your OpenClaw environment by cloning this repository into your workspace or skills directory:

```bash
git clone https://github.com/Veillabsapp/veillabs-ai-skills.git veillabs
```

## Configuration

The Veillabs skill requires the API base URL to be set in your OpenClaw environment variables.

Ensure the following environment variable is loaded:
- `VEILLABS_BASE_URL` : The core API URL (e.g., `https://veillabs.app`).

### Enabling the Skill
To enable the plugin, ensure it is activated in your OpenClaw configuration (`~/.openclaw/openclaw.json` or your workspace config):

```json
{
  "plugins": {
    "veillabs": {
      "enabled": true
    }
  }
}
```

## Project Structure

```text
.
├── openclaw.plugin.json        # Main OpenClaw plugin definitions
├── package.json                # NPM package information
├── index.js                    # Programmatic plugin export
└── veillabs-skill/             # The core Skill directory
    ├── SKILL.md                # Agent instructions & metadata
    ├── examples/               # Example JSON payloads (seed & swap)
    ├── references/             # Full API Reference Documentation
    └── scripts/                # Helper client tools for Veillabs API
```

## API Reference

For a complete breakdown of the Veillabs API, detailed endpoint documentation, background workers, and order status lifecycles, please refer to the [API Reference](veillabs-skill/references/api-reference.md).

## License

This project is licensed under the MIT License.
