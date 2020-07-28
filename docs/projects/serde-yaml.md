# serde-yaml

YAML serialization for Rust's serde framework.

---

## Overview

**serde-yaml** is the standard YAML library for Rust applications. Built on the powerful serde serialization framework, it provides type-safe YAML processing for Rust's growing ecosystem.

- **Repository**: [github.com/yaml/serde-yaml](https://github.com/yaml/serde-yaml)
- **Language**: Rust
- **License**: MIT OR Apache-2.0
- **Maintainer**: The YAML Company (fork of [dtolnay/serde-yaml](https://github.com/dtolnay/serde-yaml), now archived)

!!! info "About This Fork"
    This is a fork of the original serde-yaml by David Tolnay, which has been archived. The YAML Company maintains this fork with the author's approval to ensure continued support for the Rust ecosystem.

---

## Why serde-yaml Matters

### Powers Rust Applications

serde-yaml is used by Rust applications for:

- **Configuration Files** - Type-safe config management
- **Data Serialization** - Converting Rust structs to/from YAML
- **API Responses** - YAML-based web APIs
- **Build Systems** - Cargo and build configuration
- **CLI Tools** - Command-line applications written in Rust

### Growing Adoption

- **20M+ downloads** on crates.io
- Standard choice for YAML in Rust
- Part of the serde ecosystem
- Used by major Rust projects

### Type-Safe YAML

- Compile-time type checking
- Zero-cost abstractions
- Memory safety guarantees
- Rust's ownership model

---

## The YAML Company Maintenance

Under The YAML Company's stewardship, serde-yaml receives:

### Security First
- Regular security audits
- Safe deserialization by default
- Rust's memory safety guarantees
- YES members get 48-hour early security notifications

### Active Development
- Bug fixes and stability improvements
- Performance optimizations
- Compatibility with latest Rust versions
- Feature enhancements

### Professional Support
- Responsive to issues and pull requests
- Clear development roadmap
- Documentation improvements
- Enterprise integration support

---

## Maintenance & Accountability

serde-yaml is professionally maintained by The YAML Company, led by Ingy döt Net, co-creator of YAML.

- **Security contact:** security@yaml.com
- **Disclosure policy:** Coordinated disclosure with advance notice to YES members
- **Release cadence:** Security patches prioritized, feature releases quarterly

Need supply chain documentation for compliance? [Learn about the YES Program →](../yes/index.md)

---

## Type Safety Benefits

serde-yaml provides compile-time guarantees:

```rust
// This won't compile if the YAML structure doesn't match
let config: Config = serde_yaml::from_str(yaml)?;

// Fields are guaranteed to exist
println!("Host: {}", config.database.host);

// Types are checked at compile time
let port: u16 = config.database.port;  // Can't accidentally be a string
```

---

## Support serde-yaml

serde-yaml is maintained through the [YES Program](../yes/index.md). YES members get:

- Priority support for serde-yaml issues
- Early notification of security vulnerabilities
- Influence over roadmap and feature development
- Direct access to maintainers

[Join the YES Program →](../yes/index.md){ .md-button .md-button--primary }

---

## Resources

- [:octicons-mark-github-16: GitHub Repository](https://github.com/dtolnay/serde-yaml)
- [:octicons-book-16: Documentation](https://docs.rs/serde_yaml/)
- [:octicons-package-16: Crates.io Package](https://crates.io/crates/serde_yaml)
- [:octicons-issue-opened-16: Issue Tracker](https://github.com/dtolnay/serde-yaml/issues)
