# libyaml

The fast C library that forms the foundation of many YAML implementations.

---

## Overview

**libyaml** is a YAML parser and emitter written in C. It's designed for speed and efficiency, and serves as the foundation for YAML libraries in many programming languages.

- **Repository**: [github.com/yaml/libyaml](https://github.com/yaml/libyaml)
- **Language**: C
- **License**: MIT
- **Maintainer**: The YAML Company

---

## Why libyaml Matters

### Foundation Layer

libyaml provides the parsing engine for:

- **pyyaml** (Python) - Via C extension
- **Ruby YAML** (Psych) - Ruby's standard YAML library
- **Perl YAML** (YAML::XS) - High-performance Perl YAML
- **PHP yaml extension** - PHP's native YAML support
- Many other language bindings

### Performance Critical

- Written in C for maximum speed
- Minimal memory footprint
- Suitable for embedded systems
- Optimized for high-throughput applications

### YAML Specification Reference

- Comprehensive YAML 1.1 implementation
- Reference for implementers
- Extensive test suite
- Standards-compliant

---

## The YAML Company Maintenance

Under The YAML Company's stewardship, libyaml receives:

### Security First
- Regular security audits
- Memory safety improvements
- Rapid vulnerability patching
- Fuzzing and security testing
- YES members get 48-hour early security notifications

### Active Development
- Bug fixes and stability improvements
- Performance optimizations
- YAML 1.2 specification support
- Compiler and platform compatibility

### Professional Support
- Responsive to issues and pull requests
- Clear development roadmap
- Support for library consumers
- Integration guidance

---

## Maintenance & Accountability

libyaml is professionally maintained by The YAML Company, led by Ingy döt Net, co-creator of YAML.

- **Security contact:** security@yaml.com
- **Disclosure policy:** Coordinated disclosure with advance notice to YES members
- **Release cadence:** Security patches prioritized, feature releases quarterly

Need supply chain documentation for compliance? [Learn about the YES Program →](../yes/index.md)

---

## Language Bindings

libyaml has official and community bindings for:

| Language | Binding | Status |
|----------|---------|--------|
| Python | pyyaml (C extension) | :material-check:{ .green } Official |
| Ruby | Psych | :material-check:{ .green } Official |
| Perl | YAML::XS | :material-check:{ .green } Community |
| PHP | yaml extension | :material-check:{ .green } Community |
| Lua | lua-yaml | :material-check:{ .green } Community |

---

## Security

libyaml is regularly tested for security:

- Continuous fuzzing with OSS-Fuzz
- Static analysis
- Memory safety testing (Valgrind, AddressSanitizer)
- Security-focused code reviews

Recent security improvements:

- Bounds checking
- Integer overflow protection
- Memory leak fixes
- Stack limit enforcement

---

## Support libyaml

libyaml is maintained through the [YES Program](../yes/index.md). YES members get:

- Priority support for libyaml issues
- Early notification of security vulnerabilities
- Influence over roadmap and feature development
- Direct access to maintainers

[Join the YES Program →](../yes/index.md){ .md-button .md-button--primary }

---

## Resources

- [:octicons-mark-github-16: GitHub Repository](https://github.com/yaml/libyaml)
- [:octicons-book-16: Documentation](https://github.com/yaml/libyaml/tree/master/doc)
- [:octicons-issue-opened-16: Issue Tracker](https://github.com/yaml/libyaml/issues)
- [:octicons-shield-16: Security Policy](https://github.com/yaml/libyaml/security/policy)
