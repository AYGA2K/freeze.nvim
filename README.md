# freeze.nvim

## Overview

A Neovim plugin to generate images of code using the Freeze CLI tool.

## Installation with Lazy

```
{
  "AYGA2K/freeze.nvim",
  opts = {
    save_path = "~/Pictures/",
  },
}
```

## Usage

- Use the `require('freeze').freeze()` command to generate an image of the code in the current buffer.

## Configuration

- Optionally, you can customize the save path for the images.
