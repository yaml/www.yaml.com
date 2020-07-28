# YAML Cheatsheet

Quick reference for YAML syntax.

---

## Basic Structures

=== "Mappings"

    ```yaml
    # Simple mapping (key: value)
    name: John
    age: 30
    city: New York
    ```

=== "Sequences"

    ```yaml
    # Simple sequence (list)
    - apple
    - banana
    - carrot
    ```

=== "Nested"

    ```yaml
    # Nested structures
    person:
      name: John
      age: 30
      hobbies:
        - reading
        - coding
        - hiking
    ```

---

## Scalars

=== "Strings"

    ```yaml
    # Plain (unquoted)
    title: Hello World

    # Single quoted (literal, no escaping)
    message: 'It''s a nice day'

    # Double quoted (allows escaping)
    path: "C:\\Windows\\System32"

    # Multi-line literal (preserves newlines)
    poem: |
      Roses are red
      Violets are blue
      YAML is great
      And so are you

    # Multi-line folded (joins lines)
    description: >
      This is a long paragraph
      that will be folded into
      a single line with spaces.
    ```

=== "Numbers"

    ```yaml
    # Integer
    count: 42

    # Float
    price: 19.99

    # Scientific notation
    avogadro: 6.022e23

    # Hexadecimal
    hex: 0x1A

    # Octal
    octal: 0o12
    ```

=== "Booleans & Null"

    ```yaml
    # Boolean values
    enabled: true
    disabled: false

    # Null values
    nothing: null
    nothing: ~
    nothing:  # empty value = null
    ```

---

## Collections

=== "Flow Style"

    ```yaml
    # Flow mapping (JSON-like)
    person: {name: John, age: 30}

    # Flow sequence (JSON-like)
    colors: [red, green, blue]

    # Mixed
    people: [
      {name: Alice, age: 25},
      {name: Bob, age: 30}
    ]
    ```

=== "Block Style"

    ```yaml
    # Block mapping
    person:
      name: John
      age: 30
      address:
        street: 123 Main St
        city: New York

    # Block sequence
    colors:
      - red
      - green
      - blue
    ```

=== "Complex Keys"

    ```yaml
    # Mapping with complex keys
    ? - key1
      - key2
    : value for complex key

    # Or use explicit key indicator
    ? complex key
    : value
    ```

---

## Anchors & Aliases

```yaml
# Define anchor with &
defaults: &defaults
  timeout: 30
  retries: 3
  log_level: info

# Reference with *
production:
  <<: *defaults
  host: prod.example.com

staging:
  <<: *defaults
  host: staging.example.com
  log_level: debug  # Override
```

---

## Documents

=== "Single Document"

    ```yaml
    # Single document (no markers needed)
    name: value
    list:
      - item1
      - item2
    ```

=== "Multiple Documents"

    ```yaml
    # Document 1
    ---
    name: Document 1
    type: config

    # Document 2
    ---
    name: Document 2
    type: data
    ```

=== "With Directives"

    ```yaml
    %YAML 1.2
    ---
    # Document content
    name: value
    ...
    ```

---

## Comments

```yaml
# Full line comment
name: value  # Inline comment

# Comments can go anywhere
person:
  # name: old_value  # Commented out
  name: new_value
```

---

## Tags

```yaml
# Explicit type tags
number: !!int 42
text: !!str 42
binary: !!binary SGVsbG8gV29ybGQ=

# Custom tags
date: !date 2025-12-10
config: !include config.yaml
```

---

## Common Patterns

=== "Configuration File"

    ```yaml
    # Application config
    app:
      name: MyApp
      version: 1.0.0
      debug: false

    database:
      host: localhost
      port: 5432
      name: myapp_db
      credentials:
        username: admin
        password: secret

    features:
      - authentication
      - api
      - admin_panel
    ```

=== "Kubernetes"

    ```yaml
    apiVersion: v1
    kind: Pod
    metadata:
      name: nginx
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:1.14.2
        ports:
        - containerPort: 80
    ```

=== "Docker Compose"

    ```yaml
    version: '3'
    services:
      web:
        image: nginx:latest
        ports:
          - "80:80"
        volumes:
          - ./html:/usr/share/nginx/html
      db:
        image: postgres:13
        environment:
          POSTGRES_PASSWORD: secret
    ```

---

## Tips & Gotchas

!!! warning "Indentation"
    - Use **spaces only**, not tabs
    - Be consistent with indentation (usually 2 or 4 spaces)
    - Indentation determines structure

!!! tip "Quotes"
    - Usually optional for simple strings
    - Required for: strings starting with special chars, reserved words (yes, no, true, false), numbers as strings
    - Example: `version: "2"` not `version: 2`

!!! danger "Reserved Words"
    These are interpreted as booleans/null unless quoted:
    ```yaml
    # Interpreted as boolean true:
    answer: yes
    # String "yes":
    answer: "yes"
    ```
    Reserved: `yes`, `no`, `true`, `false`, `on`, `off`, `null`, `~`

!!! info "Timestamps"
    YAML 1.1 auto-converts timestamp-like strings:
    ```yaml
    # May be interpreted as date in YAML 1.1:
    version: 2020-10-01
    # Safe:
    version: "2020-10-01"
    ```

---

## More Resources

- [FAQ](faq.md) - Frequently asked questions
- [Glossary](glossary.md) - YAML terminology
- [YAML Specification](https://yaml.org/spec/1.2.2/) - Official spec
