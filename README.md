# Boilerplate CLI Template

A modern Python CLI application template demonstrating `uv` builds with `click`, `rich`, and `sh` library.
Built with `nix` & `devenv` for reproducible environments.
Terminal first for taking advantage of agent workflows like `opencode`

## Features

- Modern CLI interface built with `click`
- Beautiful terminal output with `rich`
- Subprocess management via `sh` library
- Agent integration for `opencode`
- Clean JSON output for programmatic use
- Reproducible `nix` & `devenv` environment
- `uv` for fast Python dependency management
- Task automation with `just`

## Quick Start

### Prerequisites
- [Nix](https://nixos.org/download/)
- [devenv](https://devenv.sh/)
- [git](https://git-scm.com/)
- [just](https://just.systems/)

### Setup and Run

```bash
# Enter development environment (all setup is automatic)
devenv shell

# Run default command
just

# Run with custom message
just run-custom

# Run with JSON output
just run-json

# Direct usage
uv run boilerplate-cli --help
uv run boilerplate-cli --message "Custom message" --json
```

## CLI Options

- `--message TEXT`: Message to display (default: "Hello, World!")
- `--json`: Output parsable JSON instead of formatted output

## Examples

### Basic Usage

```bash
# Default hello world
uv run boilerplate-cli

# Custom message
uv run boilerplate-cli --message "Hello from boilerplate!"
```

### JSON Output for Scripting

```bash
# Clean JSON output for piping to json tools
just run-json | ...

# Output to file
just run-json > output.json
```

## Project Structure

```
.
├── boilerplate_app/     # Python application directory
│   ├── __init__.py
│   └── cli.py        # Main CLI application
├── justfile          # Just task runner recipes
├── devenv.nix        # Development environment configuration
├── devenv.yaml       # Alternative devenv configuration
├── pyproject.toml    # Python package configuration
├── uv.lock           # UV dependency lockfile
├── devenv.lock       # Devenv environment lockfile
├── .envrc            # Environment variables
├── AGENTS.md         # AI assistant configuration
├── README.md         # This file
└── DEV.md            # Developer guide
```

## Architecture

- **CLI Layer**: Click-based command interface with argument parsing
- **Output Layer**: Rich for formatted display, JSON for machine consumption
- **System Integration**: sh library for subprocess calls
- **Environment**: Nix/devenv for reproducible development
- **Package Manager**: UV for Python dependency management

## Development

See [DEV.md](./DEV.md) for developer instructions and contribution guidelines.

## License

MIT
