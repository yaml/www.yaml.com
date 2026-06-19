# Mermaid Test Page

This is a test page to isolate and iterate on the whitepaper diagrams.

## Diagram 1A: Traditional SDLC: Find issues before release

```mermaid
flowchart LR
    P[Plan]:::cheap --> C[Code]:::cheap --> B[Build]:::cheap --> T["Test & fix"]:::mid --> R[Release]:::cheap
    T --> PV["Problem with vendor code?"]:::costly --> T

    classDef cheap fill:#E1F5EE,stroke:#0F6E56,color:#04342C
    classDef mid fill:#FAEEDA,stroke:#854F0B,color:#412402
    classDef costly fill:#FAECE7,stroke:#993C1D,color:#4A1B0C
```

!!! danger "Cost to Fix Rises Later ⟶"
    Remediation costs increase significantly in the later stages of the lifecycle (Test & Release). Detecting and fixing issues earlier (shift left) is highly cost-effective.


## Diagram 1B: Upstream Verified Code: Shift issues off your board

```mermaid
flowchart LR
    subgraph vendor["Vendor's pipeline (off your board)"]
        direction LR
        VC["Code/Test/Fix"]:::neutral --> VP["Package Verified Binaries"]:::fixed
    end
    subgraph yours["Your pipeline"]
        direction LR
        YB["Build"]:::clean --> YR["Release"]:::clean
    end
    VP -->|vetted code| YB

    classDef neutral fill:#F1EFE8,stroke:#5F5E5A,color:#2C2C2A
    classDef found fill:#FAEEDA,stroke:#854F0B,color:#412402
    classDef fixed fill:#E1F5EE,stroke:#0F6E56,color:#04342C
    classDef clean fill:#EAF3DE,stroke:#3B6D11,color:#173404
    style vendor stroke-dasharray: 5 5,stroke:#534AB7,fill:#EEEDFE
    style yours stroke:#3B6D11,fill:#EAF3DE
```

## Diagram 2: 14-Day CVE Crisis Remediation Timeline (Gantt Chart)

```mermaid
---
config:
  theme: base
  useMaxWidth: true
  themeVariables:
    taskBkgColor: '#EAF3DE'
    taskBorderColor: '#3B6D11'
    taskTextColor: '#173404'
    activeTaskBkgColor: '#FAEEDA'
    activeTaskBorderColor: '#854F0B'
    activeTaskTextColor: '#412402'
    critBkgColor: '#FAECE7'
    critBorderColor: '#993C1D'
    critTextColor: '#4A1B0C'
    todayMarkerColor: '#d97706'
  gantt:
    useWidth: 1200
    leftPadding: 280
    fontSize: 16
    sectionFontSize: 16
    barHeight: 35
    barGap: 10
---
gantt
    dateFormat  X
    axisFormat %s days
    section CVE Timeline
    Phase 1 - Sourcing & Identification           :active, id1, 0, 5
    Phase 2 - Verifying & Rebuilding               :crit, id2, after id1, 10
    Phase 3 - Legal, Compliance & Audit            :id3, after id2, 14
```
