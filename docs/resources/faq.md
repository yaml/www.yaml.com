# Frequently Asked Questions

Common questions about YAML and The YAML Company.

---

## YAML Basics

??? question "What does YAML stand for?"

    YAML stands for "YAML Ain't Markup Language".

    It's a recursive acronym that emphasizes YAML's purpose as a data serialization language, not a markup language like HTML or XML.

??? question "What is YAML's preferred file extension?"

    The `.yaml` extension is preferred, but `.yml` is common and acceptable.

    Both are widely supported by tools and platforms. For consistency, we recommend using `.yaml`.

??? question "What is YAML used for?"

    YAML is used for:

    - **Configuration files** - Kubernetes, Docker Compose, CI/CD pipelines
    - **Data serialization** - Storing and transferring structured data
    - **Infrastructure as Code** - Ansible playbooks, CloudFormation templates
    - **Application settings** - Configuration management

    YAML is popular because it's human-readable and easy to write.

??? question "What's the difference between YAML and JSON?"

    JSON is actually a subset of YAML (in YAML 1.2). Key differences:

    | Feature | YAML | JSON |
    |---------|------|------|
    | Comments | Supported (`#`) | Not supported |
    | Multi-line strings | Easy with `|` and `>` | Requires escaping |
    | Readability | Very human-friendly | More verbose |
    | Quotes | Optional for simple strings | Required for strings |
    | Anchors & References | Supported (`&`, `*`) | Not supported |

    YAML is designed for humans; JSON is designed for machines.

??? question "Which YAML version should I use?"

    **YAML 1.2** is the current standard (specifically 1.2.2, released October 2021).

    YAML 1.1 is still common but has some quirks that were fixed in 1.2. Most modern tools support 1.2.

---

## The YAML Company & YES Program

??? question "What is The YAML Company?"

    The YAML Company is a company founded by Ingy döt Net (co-creator of YAML) to provide professional maintenance and enterprise support for the YAML in your stack.

    We maintain go-yaml, pyyaml, libyaml, and YAMLScript.

??? question "What is the YES Program?"

    YES (YAML Enterprise Sustainability) is an enterprise sponsorship program that provides:

    - 48-hour early security notifications
    - Professional support from YAML experts
    - Influence to help decide what YAML builds next
    - Enterprise-grade maintenance

    [Learn more about YES →](../yes/index.md)

??? question "Why does YAML need enterprise support?"

    YAML is critical infrastructure used by millions of applications, but it has historically relied on volunteer maintenance. The YES Program ensures:

    - **Timely security patches** - Professional response to vulnerabilities
    - **Sustained development** - Ongoing improvements and new features
    - **Reliable maintenance** - Not dependent on volunteer availability
    - **Expert support** - Direct access to YAML's creators and maintainers

??? question "How is The YAML Company related to yaml.org?"

    The YAML Company maintains yaml.org and has authority over the YAML specification. This site (yaml.com) is the business presence of The YAML Company, focused on the YES Program and enterprise support.

    yaml.org remains the community and specification site for YAML.

??? question "How does YES help with CRA and supply chain compliance?"

    The EU Cyber Resilience Act requires knowing who maintains your software dependencies. YES members have a direct relationship with The YAML Company—the official maintainers of go-yaml, pyyaml, and libyaml.

    We provide maintainer documentation, security contacts, and coordinated vulnerability disclosure. For enterprises needing formal compliance documentation, our Partner and Leader tiers include custom attestations.

---

## Technical Questions

??? question "How do I handle multi-line strings in YAML?"

    YAML has two ways to handle multi-line strings:

    **Literal style** (`|`) - Preserves newlines:
    ```yaml
    message: |
      Line 1
      Line 2
      Line 3
    ```
    Result: `"Line 1\nLine 2\nLine 3"`

    **Folded style** (`>`) - Folds lines into spaces:
    ```yaml
    message: >
      This is a long sentence
      that will be folded
      into a single line.
    ```
    Result: `"This is a long sentence that will be folded into a single line."`

??? question "What are anchors and aliases?"

    Anchors (`&`) and aliases (`*`) let you reference the same data multiple times:

    ```yaml
    defaults: &defaults
      timeout: 30
      retries: 3

    production:
      <<: *defaults
      host: prod.example.com

    staging:
      <<: *defaults
      host: staging.example.com
    ```

    Both `production` and `staging` will have `timeout` and `retries` from `defaults`.

??? question "Is YAML safe to use with untrusted input?"

    **Be careful!** Some YAML parsers support features that can be dangerous with untrusted input.

    **Best practices:**
    - Use safe loading functions (`yaml.safe_load()` in Python)
    - Disable tag resolution for untrusted input
    - Validate input structure after parsing

    [See our security best practices →](../projects/pyyaml.md#security)

??? question "Why is my YAML parser complaining about tabs?"

    YAML does not allow tab characters for indentation. **Use spaces only**.

    This is by design to avoid ambiguity about indentation levels.

---

## Getting Help

??? question "Where can I get help with YAML?"

    - **Community Chat**: [YAML Matrix Chat](https://matrix.to/#/#chat:yaml.io)
    - **GitHub**: Issues on specific project repositories
    - **This site**: Check our [resources](index.md) and [blog](../blog/index.md)
    - **Enterprise Support**: [JOIN YES](../yes/index.md) for professional support

??? question "How do I report a security vulnerability?"

    For security issues in The YAML Company projects:

    - **Email**: ingy@yaml.com (PGP key available on request)
    - **GitHub**: Use private security advisories

    YES Program members receive 48-hour early notification of vulnerabilities.

---

## More Questions?

Have a question not answered here? [Contact us](../about/contact.md) or join the [YAML Matrix Chat](https://matrix.to/#/#chat:yaml.io).

For enterprise support needs, [learn about the YES Program →](../yes/index.md)
