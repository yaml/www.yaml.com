---
title: YAML Glossary
---

The YAML data language has a vocabulary of its own.
This glossary identifies the YAML terms and gives their meanings.

| Term | Definition |
|------|------------|
| Alias | An alias is a reference or pointer to a node in the YAML graph that was annotated with an anchor. The alias `*foo` references the node with the anchor `&foo`.
| Anchor | An anchor is a name that is attached to a node with the syntax `&name`. It allows the node to be referenced elsewhere in the document using the alias syntax.
| Block | The term "block" is used to describe the YAML syntax form that uses indentation scoping. A YAML node can either be expressed in *block* form or *flow* form.
| Collection | A node whose *kind* is either a mapping or a sequence.
| Directive | A YAML syntax line that gives extra information to a parser. There only only 2 defined directives in YAML 1.2. \
| | * `%YAML 1.2` -- Used to indicate the YAML spec version that the stream conforms to. \
| | * `%TAG !eg! tag:example.com,1999:` -- Used to expand short tags to a fully qualified form.
| Document | A document is a top level node. A YAML file (stream) usually contains a single document; it *may* contain 0-n documents.
| DOM (1.3) | A YAML DOM is the theoretical or actual data structure that a YAML loader loads to and a YAML dumper dumps from. In some implementations it may be the final stage in the stack, and in others it is the stage below a native data structure.
| Dump/Dumper | A dumper is the set of stack transformations that convert data from a program memory structure to YAML text.
| Explicit key | The `?` explicit key indicator is used in block mappings to convey that the node that follows it is a mapping key. This is most commonly used for mapping keys that are collections.
| Flow | The term *flow* is used to describe the YAML syntax form that uses `{}` and `[]` indicators for collection scoping. It is a proper superset of the JSON syntax. Flow nodes can appear inside of block nodes, but block nodes cannot appear inside of flow nodes.
| Folded scalar | The folded syntax form is a block scalar indicated by `>` syntax and is followed by text lines that are indented past the current level. The text lines are joined together according to rather complex rules. The general rule is that 2 adjacent, non-blank lines are joined by a single space. Analogous to HTML text folding.
| Framework | A YAML implementation in a given programming language is called a framework.
| Kind | YAML has 3 *kinds* of nodes: mapping, sequence and scalar.
| Literal scalar | The *literal* block scalar form is used for multiline text. It begins with the `|` indicator. The text lines are indented past the current indentation level, but otherwise left as is. This is the best way to represent multiline plain text files in YAML.
| Load/Loader | A loader is the set of stack transformations that convert data from YAML text to an in memory data structure.
| Mapping | A mapping is a collection that consists of a set of 0 or more key/value pairs. In YAML, both the key and the value can be any *kind* of node.
| Native | An in memory data structure that is implemented natively by the programming language in use. YAML frameworks usually load data from text to native, and dump data from native to text.
| Node | This is the term to describe any individual collection or scalar in a YAML document, DOM or native structure.
| Plain scalar | An unquoted text value in a YAML document. Plain scalars are assigned tags by analysis of their textual value content.
| Quoted scalar | There are 4 methods of quoting scalars in YAML: single-quoted, double-quoted, literal and folded. Each method was its own syntax and semantics. The default tag for a quoted scalar is always `!!str`.
| Scalar | A scalar is a node that consists of a single value unit. Strings, numbers and boolean values are examples of scalar nodes.
| Schema | In YAML, the term *schema* refers to the various mechanisms that assign semantic meaning to YAML data. In YAML 1.2, this information is usually hardcoded into the various frameworks. Some frameworks allow YAML to be loaded using a few different named schemas. Additionally some frameworks support user hooks/overrides. Schema information can also be conveyed by the author of a YAML file, using tags. \
| | \
| | In the next version, YAML will define a schema language that will allow for custom and concise schema definitions to a YAML framework may use to process data.
| Sequence | A sequence is a collection that is an ordered list of 0 or more nodes.
| Stack | The YAML stack is the set of transformations that take YAML data from one form to another. There are 2 primary stacks. The *load stack* takes data from text to a native structure, and the *dump stack* takes data from a native structure to text.
| State | The various defined forms that YAML data exists in within the stack. These include: `file encoding`, `character stream`, `textual lexemes`, `data tokens`, `YAML events`, `YAML DOM`, `native data`.
| Stream | A YAML stream is the text of a YAML file. It contains directives, comments and documents.
| Tag | Every node in a YAML document is assigned a tag by the load stack. The tag indicates how the data will be transformed into memory. Tags are mostly assigned implicitly, but the `!ns!tag` syntax can be used to set a node's tag explicitly.
| Transformation | A process in the YAML Stack that converts data from one state to another. The transformations in the load stack consist of `read`, `scan`, `lex`, `parse`, `compose` and `construct`. The dump stack goes in parallel the other way: `deconstruct`, `decompose`, `emit`, `format`, `join` and `write`.
| Top-level | In texts describing YAML text, nodes and processing, it is often necessary to qualify a node as being at the top level or not. For instance: "A YAML document consists of a single, top-level node".
