# pyyaml

The canonical YAML library for Python, powering Ansible and the Python ecosystem.

---

## Overview

**pyyaml** is the standard YAML library for Python. It's the foundation of Ansible, the world's most popular automation tool, and countless Python applications.

- **Repository**: [github.com/yaml/pyyaml](https://github.com/yaml/pyyaml)
- **Package**: [pypi.org/project/PyYAML](https://pypi.org/project/PyYAML/)
- **Language**: Python (with C extension via libyaml)
- **License**: MIT
- **Maintainer**: The YAML Company

---

## Why pyyaml Matters

### Powers Automation

pyyaml is the YAML engine behind:

- **Ansible** - The world's leading automation platform
- **Salt** - Configuration management and orchestration
- **Home Assistant** - Smart home automation
- **AWS CloudFormation** - Infrastructure-as-code
- **Pre-commit** - Multi-language git hook framework
- Countless Python applications and frameworks

### Massive Adoption

- **300M+ downloads** per month via PyPI
- De facto standard for YAML in Python
- Used by millions of Python developers
- Essential infrastructure for DevOps and automation

### Battle-Tested

- Decades of production use
- Proven reliability at scale
- Extensive compatibility
- Active community

---

## The YAML Company Maintenance

Under The YAML Company's stewardship, pyyaml receives:

### Security First
- Regular security audits
- Rapid vulnerability patching
- Safe defaults (SafeLoader)
- YES members get 48-hour early security notifications

### Active Development
- Python 3.x compatibility improvements
- Performance optimizations via libyaml
- Bug fixes and stability improvements
- Documentation enhancements

### Professional Support
- Responsive to issues and pull requests
- Clear development roadmap
- Integration support for enterprise users
- Backwards compatibility focus

---

## Maintenance & Accountability

pyyaml is professionally maintained by The YAML Company, led by Ingy döt Net, co-creator of YAML.

- **Security contact:** security@yaml.com
- **Disclosure policy:** Coordinated disclosure with advance notice to YES members
- **Release cadence:** Security patches prioritized, feature releases quarterly

Need supply chain documentation for compliance? [Learn about the YES Program →](../yes/index.md)

---

## Security

pyyaml provides multiple loaders with different security levels:

| Loader | Use Case | Safety |
|--------|----------|--------|
| `safe_load()` | Untrusted input | :material-check:{ .green } Safe |
| `full_load()` | Known YAML tags | :material-alert:{ .orange } Use with caution |
| `unsafe_load()` | Trusted input only | :material-close:{ .red } Dangerous |

!!! warning "Security Best Practice"
    Always use `yaml.safe_load()` for untrusted input. Never use `yaml.load()` or `yaml.unsafe_load()` with user-provided data.

---

## Support pyyaml

pyyaml is maintained through the [YES Program](../yes/index.md). YES members get:

- Priority support for pyyaml issues
- Early notification of security vulnerabilities
- Influence over roadmap and feature development
- Direct access to maintainers

[Join the YES Program →](../yes/index.md){ .md-button .md-button--primary }

---

## Resources

- [:octicons-mark-github-16: GitHub Repository](https://github.com/yaml/pyyaml)
- [:octicons-book-16: Documentation](https://pyyaml.org/wiki/PyYAMLDocumentation)
- [:octicons-package-16: PyPI Package](https://pypi.org/project/PyYAML/)
- [:octicons-issue-opened-16: Issue Tracker](https://github.com/yaml/pyyaml/issues)
