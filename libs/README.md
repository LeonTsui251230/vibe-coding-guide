# 📦 Libraries & External Integrations

`libs/` holds two kinds of things:

1. **Internal reusable glue code**: small, stable, low-coupling modules (`common/`)
2. **Third-party tools & external integrations**: keep them thin (`external/`)

`database/` is reserved for future data persistence layers.

## Structure

```
libs/
├── README.md
├── common/               # Internal reusable utilities
│   ├── README.md
│   ├── __init__.py
│   ├── models/
│   │   └── __init__.py
│   └── utils/
│       └── backups/
│           ├── README.md
│           ├── backup.py
│           └── backup.sh
├── database/             # Data layer (placeholder)
│   ├── README.md
│   └── .gitkeep
└── external/             # Third-party integrations
    ├── README.md
    └── .gitkeep
```

## Contribution Rules

1. Define responsibility boundaries before writing code.
2. Record dependencies with minimum versions.
3. Update the corresponding README when structure changes.
