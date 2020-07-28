# YAMLScript

Next-generation YAML programming language for advanced configuration management.

---

## Overview

**YAMLScript** is an innovative programming language that extends YAML with computation capabilities. It looks like YAML but can execute code, making it perfect for advanced configuration management.

- **Website**: [yamlscript.org](https://yamlscript.org)
- **Repository**: [github.com/yaml/yamlscript](https://github.com/yaml/yamlscript)
- **Status**: Active development
- **Creator**: Ingy döt Net (YAML co-creator)

---

## What is YAMLScript?

### YAML + Programming

YAMLScript is:

- **Valid YAML** - Any YAMLScript is valid YAML
- **Executable** - Can evaluate expressions and run functions
- **Familiar** - Uses YAML syntax you already know
- **Powerful** - Supports variables, functions, and logic

### The Problem YAMLScript Solves

Traditional YAML is static data. YAMLScript adds computation:

**Traditional YAML** (static):
```yaml
database:
  host: localhost
  port: 5432
  url: "postgres://localhost:5432/mydb"  # Redundant!
```

**YAMLScript** (computed):
```yaml
database:
  host: localhost
  port: 5432
  url: =>"postgres://$host:$port/mydb"  # Computed!
```

---

## Enterprise Features

### YES Leader Benefits

YES Leader tier members get access to:

- **YAMLScript enterprise license**
- **Priority support** for YAMLScript implementation
- **Custom function libraries** for enterprise use cases
- **Training and consulting** on YAMLScript adoption
- **Early access** to new features

### Security & Compliance

- Sandboxed execution environment
- Audit logging for all computations
- Policy enforcement capabilities
- No arbitrary code execution

### Integration

YAMLScript integrates with:

- CI/CD pipelines
- Kubernetes operators
- Configuration management tools
- GitOps workflows

---

## Getting Started

### Installation

```bash
# Install YAMLScript CLI
curl https://yamlscript.org/install.sh | bash

# Or via package managers
brew install yamlscript  # macOS
apt install yamlscript   # Debian/Ubuntu
```

### Your First YAMLScript

Create `config.ys`:

```yaml
!yamlscript/v0

name: "YAMLScript Example"
version: "1.0.0"
timestamp: =>now()
greeting: =>"Hello from YAMLScript at $timestamp"
```

Run it:

```bash
ys config.ys
```

### Learn More

- [:octicons-book-16: YAMLScript Documentation](https://yamlscript.org/docs)
- [:octicons-mortar-board-16: Tutorial](https://yamlscript.org/tutorial)
- [:octicons-code-16: Examples](https://github.com/yaml/yamlscript/tree/main/examples)

---

## Development Status

YAMLScript is under active development:

- **Current**: v0.1 - Core language features
- **Q1 2026**: v0.5 - Enterprise features, security hardening
- **Q2 2026**: v1.0 - Production-ready release

### Roadmap

- [x] Core expression evaluation
- [x] Function definitions
- [x] Control flow (if/when/for)
- [ ] Standard library completion
- [ ] Enterprise security features
- [ ] IDE/editor integrations
- [ ] Kubernetes operator
- [ ] Helm plugin

---

## Support YAMLScript

YAMLScript development is funded through the [YES Program](../yes/index.md):

- **YES Members**: Beta access to YAMLScript
- **YES Partners**: Early access and training
- **YES Leaders**: Enterprise license and custom development

[Join YES to Support YAMLScript →](../yes/index.md){ .md-button .md-button--primary }

---

## Resources

- [:octicons-home-16: YAMLScript.org](https://yamlscript.org)
- [:octicons-mark-github-16: GitHub Repository](https://github.com/yaml/yamlscript)
- [:octicons-book-16: Documentation](https://yamlscript.org/docs)
- [:octicons-play-16: Playground](https://yamlscript.org/playground)
- [:octicons-discussion-16: Discussions](https://github.com/yaml/yamlscript/discussions)

---

!!! info "Enterprise Beta"
    YES members can request early access to YAMLScript enterprise features. [Contact us](../yes/contact.md) for more information.
