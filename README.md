# freeze.nvim

## Overview

This Neovim plugin enables users to take screenshots of files within Neovim using the Freeze CLI tool.

## Installation

```
{ "AYGA2K/freeze.nvim", opts = {
  save_path = "~/Pictures/",
} }
```

## Usage

- Use the `require('freeze').freeze()` command to take a screenshot of the current opened file.

## Configuration

- Optionally, you can customize the save path for screenshots.

## License

This plugin is licensed under the MIT License.
