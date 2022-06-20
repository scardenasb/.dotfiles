-- Copyright (c) 2020-2021 scardenasb
-- MIT license, see LICENSE for more details.
-- https://gist.github.com/scardenasb/8297abf8e58755293577449788bfd8f6
-- stylua: ignore
local colors = {
  c1    = '#2a313e', -- bg bar
  c2    = '#D8F7FF', -- fg lighter
  c3    = '#FF9D6F', -- insert
  c4    = '#E27B58', -- replace
  c5    = '#C67B5C', -- visual
  c6    = '#E9B560', -- normal
  -- c7    = '#000D30', -- fg darker
  c7    = '#222222', -- fg darker
}
return {
  normal = {
    a = { fg = colors.c7, bg = colors.c3, gui = 'bold' },
    b = { fg = colors.c2, bg = colors.c1 },
    c = { fg = colors.c2, bg = colors.c1 },
  },
  insert = {
    a = { fg = colors.c7, bg = colors.c4, gui = 'bold' },
    b = { fg = colors.c2, bg = colors.c1 },
    c = { fg = colors.c2, bg = colors.c1 },
  },
  visual = {
    a = { fg = colors.c7, bg = colors.c5, gui = 'bold' },
    b = { fg = colors.c2, bg = colors.c1 },
    c = { fg = colors.c2, bg = colors.c1 },
  },
  replace = {
    a = { fg = colors.c7, bg = colors.c6, gui = 'bold' },
    b = { fg = colors.c2, bg = colors.c1 },
    c = { fg = colors.c2, bg = colors.c1 },
  },
  inactive = {
    a = { fg = colors.c7, bg = colors.c1, gui = 'bold' },
    b = { fg = colors.c2, bg = colors.c1 },
    c = { fg = colors.c2, bg = colors.c1 },
  },
}
