# C/C++ Style Guide Github Action
---
Github Action applying the LLVM clang format to C/C++ code.

This Action checks the code using [clang-format](https://releases.llvm.org/10.0.0/docs/index.html) with the default LLVM configuration.

## Features
---
* Checks C/C++ code formatting
* Supports push triggers
* Future Enhancement: support automatic formatting and commit

## Usage
---
```bash
on: push

jobs:
  format:
    name: clang formatting
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: unspun/action-clang-format@v0.2
```
